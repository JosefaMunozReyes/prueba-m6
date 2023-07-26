class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :photo, :role])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :photo, :role])
    end    
    def after_sign_in_path_for(resource)
        publications_path
    end

    
end
