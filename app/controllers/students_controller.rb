class StudentsController < ApplicationController
  # before_action :authenticate_user, except: [:index, :show]

  def index
    @students = Student.all
    render template: "students/index"
  end

  def show
    @student = Student.find_by(id: params[:id])
    render template: "students/show"
  end

  def create
    student = Student.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"],
      short_bio: params["short_bio"],
      linkedin: params["linkedin"],
      twitter_handle: params["twitter_handle"],
      personal_website: params["personal_website"],
      online_resume: params["online_resume"],
      github: params["github"],
      photo: params["photo"],
    )
    if student.save
      @student = student
      render template: "students/show"
    else
      render json: { errors: student.errors_full_messages }, status: :unprocessable_entity
    end
  end

  def update
    student = Student.find_by(id: params[:id])
    student.first_name = params["first_name"] || student.first_name
    student.last_name = params["last_name"] || student.last_name
    student.email = params["email"] || student.email
    student.phone_number = params["phone_number"] || student.phone_number
    student.short_bio = params["short_bio"] || student.short_bio
    student.linkedin = params["linkedin"] || student.linkedin
    student.twitter_handle = params["twitter_handle"] || student.twitter_handle
    student.personal_website = params["personal_website"] || student.personal_website
    student.online_resume = params["online_resume"] || student.online_resume
    student.github = params["github"] || student.github
    student.photo = params["photo"] || student.photo

    if student.save
      @student = student
      render template: "students/show"
    else
      render json: { errors: student.errors.errors_full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    student = Student.find_by(id: params[:id])
    student.destroy
    render json: { message: "Selected student has been successfully removed" }
  end
end
