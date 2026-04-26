require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.enable_reloading = false

  # Eager load code on boot.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  # config.require_master_key = true

  # config.public_file_server.enabled = false

  # config.assets.css_compressor = :sass

  config.assets.compile = false

  # config.asset_host = "http://assets.example.com"

  # config.action_dispatch.x_sendfile_header = "X-Sendfile"
  # config.action_dispatch.x_sendfile_header = "X-Accel-Redirect"

  config.active_storage.service = :local

  # config.action_cable.mount_path = nil
  # config.action_cable.url = "wss://example.com/cable"
  # config.action_cable.allowed_request_origins = [ "http://example.com", /http:\/\/example.*/ ]

  # SSL
  config.force_ssl = true

  # LOG
  config.logger = ActiveSupport::Logger.new(STDOUT)
    .tap  { |logger| logger.formatter = ::Logger::Formatter.new }
    .then { |logger| ActiveSupport::TaggedLogging.new(logger) }

  config.log_tags = [ :request_id ]
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

  # i18n
  config.i18n.fallbacks = true

  config.active_support.report_deprecations = false
  config.active_record.dump_schema_after_migration = false

  config.action_mailer.perform_caching = false

  # Renderのドメイン許可
  config.hosts << "rina-5j5e.onrender.com"

  # config.hosts << ".onrender.com"
end
