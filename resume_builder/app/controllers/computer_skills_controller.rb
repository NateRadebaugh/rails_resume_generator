class ComputerSkillsController < ApplicationController
  # GET /computer_skills
  # GET /computer_skills.xml
  def index
    @computer_skills = ComputerSkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @computer_skills }
    end
  end

  # GET /computer_skills/1
  # GET /computer_skills/1.xml
  def show
    @computer_skill = ComputerSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @computer_skill }
    end
  end

  # GET /computer_skills/new
  # GET /computer_skills/new.xml
  def new
    @computer_skill = ComputerSkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @computer_skill }
    end
  end

  # GET /computer_skills/1/edit
  def edit
    @computer_skill = ComputerSkill.find(params[:id])
  end

  # POST /computer_skills
  # POST /computer_skills.xml
  def create
    @computer_skill = ComputerSkill.new(params[:computer_skill])

    respond_to do |format|
      if @computer_skill.save
        format.html { redirect_to(@computer_skill, :notice => 'Computer skill was successfully created.') }
        format.xml  { render :xml => @computer_skill, :status => :created, :location => @computer_skill }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @computer_skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /computer_skills/1
  # PUT /computer_skills/1.xml
  def update
    @computer_skill = ComputerSkill.find(params[:id])

    respond_to do |format|
      if @computer_skill.update_attributes(params[:computer_skill])
        format.html { redirect_to(@computer_skill, :notice => 'Computer skill was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @computer_skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /computer_skills/1
  # DELETE /computer_skills/1.xml
  def destroy
    @computer_skill = ComputerSkill.find(params[:id])
    @computer_skill.destroy

    respond_to do |format|
      format.html { redirect_to(computer_skills_url) }
      format.xml  { head :ok }
    end
  end
end
