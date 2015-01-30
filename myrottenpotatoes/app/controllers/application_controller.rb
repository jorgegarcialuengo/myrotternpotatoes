class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_current_user
  protected # prents method form being invoqued by a route
  def set_current_user
    # we exploit the fact that find_by_id(nil) returns nil
    @current_user ||= Moviegoer.find_by_id(session[:user_id])

    # redirect_to login_path and return unless @current_user # and is like && but with lower presence, unless is computed before
  end

end
