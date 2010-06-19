class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  def require_admin!
    if !user_signed_in? || !current_user.admin?
      flash[:error] = "You don't have permission to access this page"
      redirect_to root_url
    end
  end
end
