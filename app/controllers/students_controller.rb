class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    # binding.pry
    @student = Student.find_by(id: params[:id])
  end

  def new
  end 

  def create
    # binding.pry
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student.id)
  end

end
