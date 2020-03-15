class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :admin?

  def index
    @difficulty_options = [1, 2, 3, 4, 5]
    @difficulty_questions = [
      Question.where(difficulty: 1).count,
      Question.where(difficulty: 2).count,
      Question.where(difficulty: 3).count,
      Question.where(difficulty: 4).count,
      Question.where(difficulty: 5).count
    ]
    questions = Question.new.questions_count
    @user_name = questions[0]
    @user_questions = questions[1]
  end

  def access
    @users = User.all
  end

  def courses
    @courses = Course.all
  end

  def destroy
    user = User.find(params[:id])
    if user != current_user
      if user.destroy!
        respond_to do |format|
          format.html { redirect_to admin_index_path, notice: I18n.l('alert.access.delete') }
          format.json { head :no_content }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to admin_index_path, notice: I18n.l('alert.access.destroy_yourself') }
        format.json { render json: { message: 'You can\'t destroy yourself' }, status: :unprocessable_entity }
      end
    end
  end

  private

  def admin?
    return true if current_user.admin

    redirect_to questions_path
  end
end
