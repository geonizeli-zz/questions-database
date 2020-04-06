class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :devise?, if: :devise_controller?

  protected

  def devise?
    @devise = true
  end

  def configure_permitted_parameters
    added_attrs = %i[name email avatar password password_confirmation]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
