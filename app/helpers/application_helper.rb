require 'commonmarker'

module ApplicationHelper
  def render_markdown(markdown)
    CommonMarker.render_html(markdown, :SAFE)
  end

  def title_tag(application_name)
    tag.title([content_for(:title), application_name].compact.join(' - '))
  end

  def page_title(title = nil)
    title.nil? ? content_for(:title) : content_for(:title, title)
  end

  def global_navigation_class(fill)
    css_class = 'global-navigation'
    css_class << ' global-navigation--fill'
    return css_class
  end
end
