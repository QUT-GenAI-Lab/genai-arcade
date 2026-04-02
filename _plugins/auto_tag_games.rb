module Jekyll
  class GameTagInjector < Generator
    safe true
    priority :high

    def generate(site)
      # 1. Access the 'games' collection
      games_collection = site.collections['games']
      
      if games_collection.nil?
        Jekyll.logger.warn "GameTagInjector:", "Collection '_games' not found in _config.yml"
        return
      end

      games_collection.docs.each do |game|
        # 2. Get the path relative to the collection root
        # Example path: _games/understanding/calculator.md 
        rel_path = game.relative_path
        
        # 3. Extract the subfolder name
        # We split by '/' and take the second part (index 1) as the subfolder name
        path_parts = rel_path.split('/')
        
        # Check if it's actually in a subfolder (size > 1)
        if path_parts.size > 1
          subfolder_tag = path_parts[1] # Ignore the first part which is the collection name

          # If the subfolder name is prefixed with a number (e.g., "01-understanding"), we can remove the number and hyphen for cleaner tags
          subfolder_tag = subfolder_tag.sub(/^\d+-/, '') # Remove leading digits
          
          # 4. Initialize tags if empty, then add the subfolder name
          game.data['tags'] ||= []
          
          # Ensure we don't add the tag twice if it's already there
          unless game.data['tags'].include?(subfolder_tag)
            game.data['tags'] << subfolder_tag
            Jekyll.logger.info "GameTagInjector:", "Added tag '#{subfolder_tag}' to #{game.basename}"
          end
        end
      end
    end
  end
end