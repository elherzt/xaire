class ApplicationController < ActionController::Base
 before_filter :configure_permitted_parameters, if: :devise_controller?
 protect_from_forgery with: :exception

decent_configuration do
  strategy DecentExposure::StrongParametersStrategy
end

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :email
    devise_parameter_sanitizer.for(:sign_up) << :username 
    devise_parameter_sanitizer.for(:sign_in) << :username 
  end

end
