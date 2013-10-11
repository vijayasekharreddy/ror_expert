class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  #overriding the devise method to redirect after login
  def after_sign_in_path_for(resource_or_scope)
    "/home/index"
  end
end
