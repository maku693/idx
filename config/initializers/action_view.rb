# Be sure to restart your server when you modify this file.

Rails.application.config.action_view.field_error_proc = proc { |html_tag, instance|
  # Do not wrap fields with errors
  html_tag.html_safe
}
