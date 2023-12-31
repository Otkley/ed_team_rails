module DeviseWhitelist
  # por cada _ en nombre de archivo una mayuscula, no olvidar

  # extendemos todas las funcionalidades de un Concern
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end