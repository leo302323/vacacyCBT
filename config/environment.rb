# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
VacacyCBT::Application.initialize!

VacacyCBT::Application.configure do
  #config.action_mailer.delivery_method=:smtp
  #config.action_mailer.smtp_settings = {
   # :address              => "smtp.gmail.com",
  #  :port                 => 587,
  #  :domain               => 'www.google.com',
  #  :user_name            => 'zlw302323@gmail.com',
    #:password             => 'leo321321',
  #  :authentication       => 'plain',
   # :enable_starttls_auto => true  }
   
    config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: "smtp.mandrillapp.com",
    port: 587,
    user_name: "vincent.007.cn@gmail.com",
    password: "YyeiYCW5ZPr5OxsrQe6xYg"
  }
end