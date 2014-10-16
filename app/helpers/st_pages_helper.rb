module StPagesHelper
  def mkdown_to_html(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    markdown = markdown.render(text)
  end
end
