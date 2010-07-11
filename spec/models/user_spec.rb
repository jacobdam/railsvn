require "#{File.dirname(__FILE__)}/../spec_helper"

describe User do
  describe "validations" do
    it { should validate_presence_of(:email) }
    it { Factory.create(:user).should validate_uniqueness_of(:email) }
    it "should validate format of email" do
      should allow_value("someone@example.com").for(:email)
      should allow_value("some.one@example.com.vn").for(:email)
      should_not allow_value("").for(:email)
      should_not allow_value("someone").for(:email)
      should_not allow_value("someone@example").for(:email)
      should_not allow_value("@example.com").for(:email)
    end
  end
end
