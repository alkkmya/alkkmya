require "spec_helper"

describe EmailFormatValidator do
  subject { EmailFormatValidator }
  describe ".valid_email?" do
    context "when value is a valid email" do
      ["email@gmail.com", "blabla@uol.com.br", "email@gov.br"].each do |email|
        it "returns true for #{email}" do
          subject.valid_email?(email).should be_true
        end
      end
      context "when value isn't a valid email" do
        ["email", "blabla@uol", "invalid.email"].each do |email|
          it "returns false for #{email}" do
            subject.valid_email?(email).should be_false
          end
        end
      end
    end

  end

end