require "spec_helper"

describe Contact do
  it { should be_a ActiveRecord::Base }

  [:name, :email].each do |attr|
    it { should validate_presence_of attr }
  end



end