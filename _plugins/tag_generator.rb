module Jekyll
  class TagPageGenerator < Generator
    safe true

    def generate(site)
      site.tags.keys.each do |tag|
        site.pages << TagPage.new(site, site.source, tag)
      end
    end
  end

  class TagPage < Page
    def initialize(site, base, tag)
      @site = site
      @base = base
      @dir = File.join('tags', tag.downcase.gsub(' ', '-'))
      @name = 'index.html'

      self.process(@name)
      self.data = {
        'layout' => 'tag',
        'tag' => tag,
        'title' => "Posts tagged with '#{tag}'"
      }
    end
  end
end
