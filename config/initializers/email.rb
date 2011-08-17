ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "alkkmya.com.br",
  :user_name            => "contato",
  :password             => "",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

