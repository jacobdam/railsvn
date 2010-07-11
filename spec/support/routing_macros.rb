module RoutingMacros
  module ClassMethods
    def it_should_map_resources(name, options = {})
      controller = name.to_s
      prefix = name.to_s

      if options[:only].present?
        actions = options[:only]
      else
        actions = [:index, :show, :destroy, :new, :create, :edit, :update]
        actions -= options[:except] if options[:except].present?
      end

      it { should route(:get, "/#{prefix}").to(:controller => controller, :action => 'index') } if actions.include?(:index)
      it { should route(:get, "/#{prefix}/123").to(:controller => controller, :action => 'show', :id => '123') } if actions.include?(:show)
      it { should route(:delete, "/#{prefix}/123").to(:controller => controller, :action => 'destroy', :id => '123') } if actions.include?(:destroy)
      it { should route(:get, "/#{prefix}/new").to(:controller => controller, :action => 'new') } if actions.include?(:new)
      it { should route(:post, "/#{prefix}").to(:controller => controller, :action => 'create') } if actions.include?(:create)
      it { should route(:get, "/#{prefix}/123/edit").to(:controller => controller, :action => 'edit', :id => '123') } if actions.include?(:edit)
      it { should route(:put, "/#{prefix}/123").to(:controller => controller, :action => 'update', :id => '123') } if actions.include?(:update)

      if options[:member].present?
        actions = options[:member] || {}
        actions.each_pair do |action, method|
          it { should route(method, "/#{prefix}/123/#{action}").to(:controller => controller, :action => action, :id => '123') }
        end
      end

      if options[:collection].present?
        actions = options[:collection] || {}
        actions.each_pair do |action, method|
          it { should route(method, "/#{prefix}/#{action}").to(:controller => controller, :action => action) }
        end
      end
    end
  end

  def self.included(base)
    base.extend ClassMethods
  end
end