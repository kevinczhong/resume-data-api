class CapstonesController < ApplicationController
  def index
    capstones = Capstone.all
    render json: capstones.as_json
  end

  def show
    capstone = Capstone.find_by(id: params["id"])
    render json: capstone.as_json
  end

  def create
    capstone = Capstone.new(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: params[:student_id],
    )
    capstone.save
    render json: capstone.as_json
  end

  def update
    capstone = Capstone.find_by(id: params[:id])
    captsone.student_id = params[:student_id] || capstone.student_id
    capstone.name = params[:name] || capstone.name
    capstone.description = params[:description] || capstone.description
    capstone.url = params[:url] || capstone.url
    capstone.save
    render json: capstone.as_json
  end

  def destroy
    capstone = Capstone.find_by(id: params[:id])
    capstone.destroy
    render json: { message: "Capstone Deleted" }
  end
end
