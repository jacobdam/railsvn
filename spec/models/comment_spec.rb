require 'spec_helper'

describe Comment do
  describe "validations" do
    it { should validate_presence_of(:body) }
  end
  
  describe "associations" do
    it { should belong_to(:article) }
    it { should belong_to(:author) }
  end
end
