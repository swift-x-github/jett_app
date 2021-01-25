class ApplicationController < ActionController::Base

   around_action :switch_locale
 
   def switch_locale(&action)
     locale = params[:locale] || I18n.default_locale
     I18n.with_locale(locale, &action)
   end

   #config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
   #config.i18n.default_locale = :ru


   # before_action :configure_permitted_parameters, if: :devise_controller?
protected
def  configure_permitted_parameters
 devise_parameter_sanitizer.permit(:update, keys: [:first_name, :last_name, :url])

 devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])


end 
end
