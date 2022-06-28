class StudentSkillsController < ApplicationController
  def index
    student_skills = StudentSkill.all
    render json: student_skills.as_json
  end

  def create
    student_skill = StudentSkill.new(
      student_id: params["student_id"],
      skill_id: params["skill_id"],
    )
    student_skill.save
    render json: student_skill.as_json
  end

  def destroy
    student_skill = StudentSkill.find_by(id: params[:id])
    student_skill.destroy
    render json: { message: "Selected student skill has been successfully removed" }
  end
end
