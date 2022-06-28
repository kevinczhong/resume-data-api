class SkillsController < ApplicationController
  def index
    skills = Skill.all
    render json: skills.as_json
  end

  def show
    skill = Skill.find_by(id: params[:id])
    render json: skill.as_json
  end

  def create
    skill = Skill.new(
      skill_name: params["skill_name"],
    )
    skill.save
    render json: skill.as_json
  end

  def update
    skill = Skill.find_by(id: params[:id])
    skill.skill_name = params["skill_name"] || skill.skill_name
    skill.save
    render json: skill.as_json
  end

  def destroy
    skill = Skill.find_by(id: params[:id])
    skill.destroy
    render json: { message: "Selected skill has been successfully removed" }
  end
end
