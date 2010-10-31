module AuthenticationMacros
  module ClassMethods
    def it_should_require_logged_in_for(*args)
      options = {}
      options = args.pop if args[-1].is_a?(Hash)
      actions = args
      params = options[:params] || {}

      actions.each do |action|
        it "should require logged in for #{action}" do
          controller.should_not_receive(action)

          get action, params
          response.should redirect_to(new_user_session_path)
          flash.should have_key(:alert)
          flash[:alert].should eql(I18n.t 'devise.failure.unauthenticated')
        end
      end
    end

    def it_should_not_require_logged_in_for(*args)
      options = {}
      options = args.pop if args[-1].is_a?(Hash)
      actions = args
      params = options[:params] || {}

      actions.each do |action|
        it "should not require logged in for #{action}" do
          controller.stub(action) do
            controller.render :text => 'success'
          end
          controller.should_receive(action)
          
          get action, params
          response.should be_success
        end
      end
    end
  end

  def self.included(base)
    base.extend ClassMethods
  end
end
