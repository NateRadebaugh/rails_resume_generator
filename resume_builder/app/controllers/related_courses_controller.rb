class RelatedCoursesController < ApplicationController
  # GET /related_courses
  # GET /related_courses.xml
  def index
    @related_courses = RelatedCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @related_courses }
    end
  end

  # GET /related_courses/1
  # GET /related_courses/1.xml
  def show
    @related_course = RelatedCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @related_course }
    end
  end

  # GET /related_courses/new
  # GET /related_courses/new.xml
  def new
    @related_course = RelatedCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @related_course }
    end
  end

  # GET /related_courses/1/edit
  def edit
    @related_course = RelatedCourse.find(params[:id])
  end

  # POST /related_courses
  # POST /related_courses.xml
  def create
    @related_course = RelatedCourse.new(params[:related_course])

    respond_to do |format|
      if @related_course.save
        format.html { redirect_to(@related_course, :notice => 'Related course was successfully created.') }
        format.xml  { render :xml => @related_course, :status => :created, :location => @related_course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @related_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /related_courses/1
  # PUT /related_courses/1.xml
  def update
    @related_course = RelatedCourse.find(params[:id])

    respond_to do |format|
      if @related_course.update_attributes(params[:related_course])
        format.html { redirect_to(@related_course, :notice => 'Related course was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @related_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /related_courses/1
  # DELETE /related_courses/1.xml
  def destroy
    @related_course = RelatedCourse.find(params[:id])
    @related_course.destroy

    respond_to do |format|
      format.html { redirect_to(related_courses_url) }
      format.xml  { head :ok }
    end
  end
end
