class ContactObserver < ActiveRecord::Observer

  def after_create(contact)
    Notifier.notification(contact).deliver!
  end

end

