Devise.setup do |config|
  # The secret key used by Devise. Devise uses this key to generate random
  # tokens. Changing this key will render invalid all existing confirmation,
  # reset password and unlock tokens in the database.
  # Devise will use the `secret_key_base` on Rails 4+ applications as its
  # `secret_key` by default. You can change it below and use your own
  # secret key.
  config.secret_key = "bc7f37cc9aaf29f3d6929be38f45f92f388a8c1550e7896e5a10438e66d44a7265346bf2f0756d99d6a43d9506f669431961"

  # Mailer Configuration
  # Configure the e-mail address which will be shown in Devise::Mailer,
  # note that it will be overwritten if you use your own mailer class
  # with default "from" parameter.
  config.mailer_sender = "noreply@example.com"
end
