module Jekyll
  class GameUrlSanitizer < Generator
    safe true
    priority :lowest # Run after all other data is processed

    def generate(site)
      return unless site.collections['games']

      site.collections['games'].docs.each do |game|
        # 1. Get the path relative to the _games folder
        # e.g., "01-tag/01-game.md"
        raw_path = game.relative_path
        
        # 2. Split the path into parts (folders + filename), and remove the first part which is the collection name
        path_parts = raw_path.split('/')
        path_parts.shift # Remove the first part (the collection name, e.g., "01-tag")

        # 3. Sanitize each part
        clean_parts = path_parts.map do |part|
          # Remove extension if it's the filename (the last part)
          name = part.sub(/\.[^.]+\z/, '') 
          
          # Remove leading numbers and optional hyphen/underscore
          # Matches: "01-", "01_", "01"
          name.sub(/^\d+[\-_]?/, '')
        end

        # 4. Rejoin them into a pretty URL
        # Result: "tag/game"
        clean_url = clean_parts.join('/')

        # If the filename was 'index', remove it from the end of the URL
        clean_url.sub!(/\/index\z/, '/')

        # 5. Inject the permalink
        # This results in: yourdomain.com/tag/game/
        game.data['permalink'] = "/#{clean_url}/"
      end
    end
  end
end