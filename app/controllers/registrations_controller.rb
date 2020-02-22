class RegistrationsController < Devise::RegistrationsController
  skip_before_action :require_no_authentication, only: [:new, :create, :cancel]
  before_action :admin?

  def create
    User.create!({
                  name: params[:user][:name],
                  email: params[:user][:email],
                  password: params[:user][:password],
                  password_confirmation: params[:user][:password_confirmation]
                })
    redirect_to questions_path
  end

  protected

  def sign_up(resource_name, resource)
  end

  def admin?
    return true if current_user.admin

    redirect_to questions_path
  end
end