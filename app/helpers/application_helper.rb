module ApplicationHelper
  def mkdown_to_html(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    markdown = markdown.render(text)
  end
  def st_id
    @sort_id = @sort_id + 1
  end
end
