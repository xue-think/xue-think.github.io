module Jekyll
class TagPageGenerator < Generator
  def generate(site)
    if site.layouts.key? 'tag'
      site.tags.each_key do |tag|
        site.pages << TagPage.new(site, site.source, tag)
      end
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
      'permalink' => "/tags/#{tag.downcase.gsub(' ', '-')}/"
    }
  end
end
end