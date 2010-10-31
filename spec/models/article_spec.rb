require "#{File.dirname(__FILE__)}/../spec_helper"

describe Article do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end
  
  describe "associations" do
    it { should have_many(:comments).dependent(:delete_all) }
    it { should belong_to(:author) }
  end
end
