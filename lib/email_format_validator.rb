class EmailFormatValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless EmailFormatValidator.valid_email? value
      object.errors.add(attribute, options[:message] || :email_invalid)
    end
  end

  def self.valid_email?(value)
    value =~ /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  end
end