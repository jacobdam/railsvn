class ActionUnauthorized < Exception; end

class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  def require_admin!
    unauthorized! unless user_signed_in? && current_user.admin?
  end

  def unauthorized!(message = "You don't have permission to access this page")
    raise ActionUnauthorized, message
  end

  rescue_from ActionUnauthorized do |e|
    redirect_to root_url, :alert => e.message
  end
end
