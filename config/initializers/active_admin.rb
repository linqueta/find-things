# frozen_string_literal: true

ActiveAdmin.setup do |config|
  config.site_title = 'Cadê a minha casa?'

  config.favicon = '/assets/favicon.ico'

  config.default_namespace = false

  config.authentication_method = :authenticate_admin_user!

  config.current_user_method = :current_admin_user

  config.logout_link_path = :destroy_admin_user_session_path

  config.comments = false

  config.batch_actions = true

  config.filter_attributes = %i[encrypted_password password password_confirmation]

  config.localize_format = :long

  config.footer = 'Feito por Linqueta'

  config.filters = true

  meta_tags_options = { viewport: 'width=device-width, initial-scale=1' }
  config.meta_tags = meta_tags_options
  config.meta_tags_for_logged_out_pages = meta_tags_options
end
