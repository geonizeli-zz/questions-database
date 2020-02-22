class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin?

  def index
    @users = User.all
  end

  private

  def is_admin?
    return true if current_user.admin

    redirect_to questions_path
  end
end
