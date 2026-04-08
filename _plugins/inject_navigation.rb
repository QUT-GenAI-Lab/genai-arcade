module Jekyll
  class GameNavigationInjector < Generator
    safe true
    priority :lowest # Ensures we use the sanitized URLs from the previous plugin

    def generate(site)
      # 1. Gather all potential participants in the navigation chain
      # This includes the root index, standalone pages in _games, and nested games
      games_collection = site.collections['games']&.docs || []
      root_index = site.pages.find { |p| p.path == "index.md" }
      
      # Combine everything into one master list
      all_content = ([root_index] + games_collection).compact
      Jekyll.logger.info "All Navigation Candidates:", all_content.map(&:path).join(", ")

      # 2. Sort with the "Index-First" heuristic
      # We create a sortable string where 'index.md' is replaced with a 
      # character that comes before '0' or 'a' in the ASCII table (like '!')
      ordered_list = all_content.sort_by do |item|
        sortable_path = item.path.gsub(/index\.md\z/, '!') # 'index.md' becomes '!' (becomes first in sorting)
        sortable_path.downcase # Ensure case-insensitive sorting
      end
      Jekyll.logger.info "Ordered Navigation List:", ordered_list.map(&:path).join(", ")

      # 3. Inject "before" and "after" pointers
      total = ordered_list.size
      ordered_list.each_with_index do |item, index|
        
        # --- Before Pointer ---
        if index == 0
          item.data['before'] = "first"
        else
          prev_item = ordered_list[index - 1]
          item.data['before'] = {
            "url"   => prev_item.url,
            "title" => prev_item.data['title'] || prev_item.basename_without_ext
          }
        end

        # --- After Pointer ---
        if index == total - 1
          item.data['after'] = "last"
        else
          next_item = ordered_list[index + 1]
          item.data['after'] = {
            "url"   => next_item.url,
            "title" => next_item.data['title'] || next_item.basename_without_ext
          }
        end
      end
    end
  end
end