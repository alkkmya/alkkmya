class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, :email_format => true
end
