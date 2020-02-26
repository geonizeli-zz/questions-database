class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :admin?
  layout 'authenticate_user'

  def index
    @users = User.all
    @subjects = Subject.all
    @courses = Course.all
  end

  private

  def admin?
    return true if current_user.admin

    redirect_to questions_path
  end
end
