Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 11

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  config.email_regexp = Settings.valid_email_regex

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

  config.lock_strategy = :failed_attempts

  config.unlock_keys = [:time]

  config.unlock_strategy = :time

  config.maximum_attempts = 5

  config.unlock_in = 5.minutes
end
