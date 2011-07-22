class IndexController < ApplicationController
  def index
    @educations = Education.all
    @experiences = Experience.all
    @activities = Activity.all
    @computer_skills = ComputerSkill.all
    MiscVariable.all.each {
      |var|
        case var.variable_name       
         when 'name'
           @name = var.variable_value
         when 'address'
           @address = var.variable_value
         when 'phone'
           @phone = var.variable_value[0..2]+'-'+var.variable_value[3..5]+'-'+var.variable_value[6..9]
         when 'email'
           @email = var.variable_value
         when 'objective'
           @objective = var.variable_value
         when 'important_words_in_objective'
           @important = var.variable_value
         when 'maximumGpa'
            @maximumGpa = format("%.2f",var.variable_value.to_f)
         when 'cumulativeGpa'
            @cumulativeGpa = format("%.2f",var.variable_value.to_f)
         end
    }
    @related_courses = RelatedCourse.all
    @page_data = render_to_string()                    
    
    File.open('../resume.html','w') {|f| f.write(@page_data) }
  end
end
