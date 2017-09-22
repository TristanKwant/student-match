class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  if resource.admin
    days_path
  else
    days_path
  end
  end

end
