class EmployeeCoursesController < ApplicationController
  before_action :set_employee_course, only: [:show, :edit, :update, :destroy]

  # GET /employee_courses
  # GET /employee_courses.json
  def index
    @employee_courses = EmployeeCourse.all
  end

  # GET /employee_courses/1
  # GET /employee_courses/1.json
  def show
  end

  # GET /employee_courses/new
  def new
    @employee_course = EmployeeCourse.new
  end

  # GET /employee_courses/1/edit
  def edit
  end

  # POST /employee_courses
  # POST /employee_courses.json
  def create
    @employee_course = EmployeeCourse.new(employee_course_params)

    respond_to do |format|
      if @employee_course.save
        format.html { redirect_to @employee_course, notice: 'Employee course was successfully created.' }
        format.json { render :show, status: :created, location: @employee_course }
      else
        format.html { render :new }
        format.json { render json: @employee_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_courses/1
  # PATCH/PUT /employee_courses/1.json
  def update
    respond_to do |format|
      if @employee_course.update(employee_course_params)
        format.html { redirect_to @employee_course, notice: 'Employee course was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_course }
      else
        format.html { render :edit }
        format.json { render json: @employee_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_courses/1
  # DELETE /employee_courses/1.json
  def destroy
    @employee_course.destroy
    respond_to do |format|
      format.html { redirect_to employee_courses_url, notice: 'Employee course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_course
      @employee_course = EmployeeCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_course_params
      params.require(:employee_course).permit(:employee_id, :course_id)
    end
end
