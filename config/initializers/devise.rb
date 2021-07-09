Devise.setup do |config|

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  config.omniauth :google_oauth2, '79226456306-mi4nh9irl0gkff379s7mhnn3f1256nos.apps.googleusercontent.com', '792Os9s0PjAFWvwdYpls8EaF', {}

  
  require 'devise/orm/active_record'

  config.omniauth :github, '93799bb32b54d7620bad', '719cbce12cb5ee1c4d39c58943f0c2c9d23f7549', scope: 'user:email'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 12

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

end
