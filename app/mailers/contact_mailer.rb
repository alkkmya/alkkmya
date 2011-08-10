class ContactMailer < ActionMailer::Base
  default :from => "jorgecavelar@gmail.com"

  def send_mail()
    mail(:to => 'renato.passero@alkkmya.com.br',
         :subject => "is we")
  end
end

