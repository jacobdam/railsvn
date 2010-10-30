class SessionsController < Devise::SessionsController
  def new
    session[:after_login_url] = params[:next] if params[:next].present?
    super
  end

  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.is_a?(User) && session[:after_login_url].present?
      session.delete(:after_login_url)
    else
      super
    end
  end
end
