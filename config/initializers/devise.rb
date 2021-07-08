Devise.setup do |config|

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  config.omniauth :google_oauth2, '79226456306-mi4nh9irl0gkff379s7mhnn3f1256nos.apps.googleusercontent.com', '792Os9s0PjAFWvwdYpls8EaF', {}

  
  require 'devise/orm/active_record'

  config.omniauth :github, '3139c36e615bba43397c', '32401ae9b84956a43918ef256eea6e0c4eb0dc95', scope: 'user:email'


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
