class Notifier < ActionMailer::Base
  default :from => "jorgecavelar@gmail.com"

  def notification(contact)
    mail :to => 'jorgecavelar@gmail.com', :subject => contact.subject

    #mail :to => 'jorgecavelar@gmail.com', :subject => contact.subject, :body => "#{contact.name} - #{contact.email} #{contact.message}"

  end
end

