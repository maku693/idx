module ApplicationHelper
  def title_tag(application_name)
    tag.title([content_for(:title), application_name].compact.join(' - '))
  end

  def page_title(title = nil)
    title.nil? ? content_for(:title) : content_for(:title, title)
  end
end
