require "jekyll"

class YouTubeEmbed < Liquid::Tag
  def initialize(tag_name, url, tokens)
    super
    @url = url.strip
  end

  def render(context)
    youtube_id = extract_youtube_id(@url)
    "<div class='embed-container'><iframe title='YouTube video player' width='640' height='390' src='https://www.youtube.com/embed/#{youtube_id}' frameborder='0' allowfullscreen></iframe></div>"
  end

  private

  def extract_youtube_id(url)
    if url =~ /youtu\.be\/([^\?]*)/
      $1
    else
      url =~ /.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/
      $6
    end
  end
end

Liquid::Template.register_tag('youtube', YouTubeEmbed)