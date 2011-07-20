class IndexController < ApplicationController
  def index
    @educations = Education.all
    @experiences = Experience.all
    @activities = Activity.all
    @computer_skills = ComputerSkill.all
    @misc_variables = MiscVariable.all
    @related_courses = RelatedCourse.all
  end

end
