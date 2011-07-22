class IndexController < ApplicationController
  def index
    @educations = Education.all
    @experiences = Experience.all
    @activities = Activity.all
    @computer_skills = ComputerSkill.all
    MiscVariable.all.each {
      |var|                      
        if var.variable_value.nil?
          var.variable_value='' 
        end
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
           @maximumGpa = var.variable_value
         when 'cumulativeGpa'
           @cumulativeGpa = var.variable_value
         end
    }
    if @name.nil? || @address.nil? || @phone.nil? || @email.nil? || @objective.nil? || @important.nil? || @cumulativeGpa.nil? || @educations.empty? || @experiences.empty? || @activities.empty? || @computer_skills.empty?
      @empty_db = true
    end
    if @name.nil?
      @name = 'John Doe'
    end
    if @address.nil?
      @address = '555 No Street|No City 55555'
    end
    if @phone.nil?
      @phone = '555-555-5555'
    end
    if @email.nil?
      @email = 'nobody@example.com'
    end
    if @objective.nil?
      @objective = 'To insert values into the db.'
    end
    if @important.nil?
      @important = 'insert values'
    end
    if @maximumGpa.nil?
      @maximumGpa = 4;
    end
    if @cumulativeGpa.nil?
      @cumulativeGpa = 4;
    end
    @related_courses = RelatedCourse.all
    @page_data = render_to_string()                    
    
    unless @empty_db
      if (File.exist?('../resume.html'))
        file = File.open('../resume.html','rb')
        contents = file.read
      else
        contents = ''
      end
      if (@page_data!=contents)
        # save the output to an html version of the resume
        File.open('../resume.html','w') {|f| f.write(@page_data) }
        
        # if wkhtmltopdf is installed, save the output to a pdf
        system('wkhtmltopdf ../resume.html ../Resume_for_'+@name.gsub(' ','_')+'.pdf &')
        
        system('sqlite3 db/development.sqlite3 .dump > ../backup_of_db.sql &')
      end
    else
      @error = 'DB is not set up right. Resume will not display correctly.'
    end
  end
end
