class QuestionsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_question, only: [:show, :edit, :update, :destroy]
  before_action :set_difficultys_options, only: [:new, :edit, :update, :create]

  add_breadcrumb I18n.t('breadcrumbs.questions'), :questions_path

  def index
    @questions = current_user.questions
  end

  def show
    add_breadcrumb @question.title, :question_path
  end

  def new
    add_breadcrumb I18n.t('breadcrumbs.new'), :new_question_path

    @question = Question.new
  end

  def edit
    add_breadcrumb @question.title, :question_path
    add_breadcrumb I18n.t('breadcrumbs.edit'), :edit_question_path
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: I18n.t('alert.course.create') }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: I18n.t('alert.course.update') }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: I18n.t('alert.course.delete') }
      format.json { head :no_content }
    end
  end

  private
  def set_question
    @question = current_user.questions.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :content, :difficulty)
  end

  def set_difficultys_options
    @difficulty_options = [['Level 1', '1'], ['Level 2', '2'], ['Level 3', '3'], ['Level 4', '4'], ['Level 5', '5']]
  end
end
