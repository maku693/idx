module ApplicationHelper
  def title_tag(application_name)
    tag.title([content_for(:title), application_name].compact.join(' - '))
  end
end
