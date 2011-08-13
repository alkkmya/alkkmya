class Notifier < ActionMailer::Base
  default :from => "jorgecavelar@gmail.com"

  def notification(contact)
    mail :to => 'jorgecavelar@gmail.com', :subject => contact.subject
  end


end

