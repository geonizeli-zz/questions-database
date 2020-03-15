class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :set_subjects

  add_breadcrumb I18n.t('breadcrumbs.admin'), :admin_index_path
  add_breadcrumb I18n.t('breadcrumbs.courses'), :admin_courses_path

  def show
    add_breadcrumb @course.name, :course_path
  end

  def new
    add_breadcrumb I18n.t('breadcrumbs.new'), :new_course_path

    @course = Course.new
  end

  def edit
    add_breadcrumb @course.name, :course_path
    add_breadcrumb I18n.t('breadcrumbs.edit'), :edit_course_path
  end

  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to admin_index_path, notice: I18n.t('alert.course.create') }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to admin_index_path, notice: I18n.t('alert.course.update') }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to admin_index_path, notice: I18n.t('alert.course.delete') }
      format.json { head :no_content }
    end
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def set_subjects
    @subjects = Subject.all
  end

  def course_params
    params.require(:course).permit(:name, subject_ids: [])
  end
end
