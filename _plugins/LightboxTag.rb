# Super Awesome Lightbox Tag expander, by Alexander Brevig
# with some minor modifications by Brett Hagman
module Jekyll
  class LighboxTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @alt = text.split(',').first.strip
      @tmpsrc = text.split(',')[1].strip
      @src = "/images/#{@tmpsrc}"
      @full = "/images/full/#{@tmpsrc}"
      @size = ""
      @size = @size + (text.split(',').count > 2 ? ' width="' + text.split(',')[2].strip + '"' : "")
      @size = @size + (text.split(',').count > 3 ? ' height="' + text.split(',')[3].strip + '"' : "")
    end

    def render(context)
      %{<a href="#{@full}" data-lity><img alt="#{@alt}" src="#{@src}"#{@size}></a>}
    end
  end
end
Liquid::Template.register_tag('lightbox', Jekyll::LighboxTag)