module Jekyll
  class IgnoreGamesSanitizer < Generator
    safe true
    priority :highest # Run before any other plugin to ensure ignored files are not processed

    def generate(site)
      return unless site.collections['games']

      # Filter out any documents in the 'games' collection that either:
      # end with "ignored.md", 
      # have "ignored: true" in their front matter,
      # is part of a folder named "ignored" (e.g., "_games/ignored/...")
      site.collections['games'].docs.reject! do |game|
        raw_path = game.relative_path
        is_ignored_file = raw_path.end_with?("ignored.md")
        has_ignored_flag = game.data['ignored'] == true
        is_in_ignored_folder = raw_path.split('/').include?("ignored")

        if is_ignored_file || has_ignored_flag || is_in_ignored_folder
          Jekyll.logger.info "IgnoreGamesSanitizer:", "Excluding #{game.path} from processing (#{is_ignored_file ? 'filename match' : 'front matter flag'})"
          true # Reject this document
        else
          false # Keep this document
        end
      end
    end
  end
end