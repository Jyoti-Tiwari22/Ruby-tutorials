# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!
Rails.application.configure do
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        address:        "tiwarij657@gmail.com",
        port:            587,
        domain:         "tiwarij657@gmail.com",
        authentication: "plain",
        user_name:      "jyoti",
        password:       "jyoti123",
        enable_starttls_auto: true
    }
end