require "#{File.dirname(__FILE__)}/../spec_helper"

describe HomesController do
  describe "routing" do
    it { should route(:get, 'http://www.railsvntest.com/').to(:controller => 'homes', :action => 'homepage') }
  end

  describe "GET 'homepage'" do
    it "should render success" do
      get :homepage
      response.should be_success
      response.should render_template('homepage')
    end
  end
end
