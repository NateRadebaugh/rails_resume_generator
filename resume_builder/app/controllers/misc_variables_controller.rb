class MiscVariablesController < ApplicationController
  # GET /misc_variables
  # GET /misc_variables.xml
  def index
    @misc_variables = MiscVariable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @misc_variables }
    end
  end

  # GET /misc_variables/1
  # GET /misc_variables/1.xml
  def show
    @misc_variable = MiscVariable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @misc_variable }
    end
  end

  # GET /misc_variables/new
  # GET /misc_variables/new.xml
  def new
    @misc_variable = MiscVariable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @misc_variable }
    end
  end

  # GET /misc_variables/1/edit
  def edit
    @misc_variable = MiscVariable.find(params[:id])
  end

  # POST /misc_variables
  # POST /misc_variables.xml
  def create
    @misc_variable = MiscVariable.new(params[:misc_variable])

    respond_to do |format|
      if @misc_variable.save
        format.html { redirect_to(@misc_variable, :notice => 'Misc variable was successfully created.') }
        format.xml  { render :xml => @misc_variable, :status => :created, :location => @misc_variable }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @misc_variable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /misc_variables/1
  # PUT /misc_variables/1.xml
  def update
    @misc_variable = MiscVariable.find(params[:id])

    respond_to do |format|
      if @misc_variable.update_attributes(params[:misc_variable])
        format.html { redirect_to(@misc_variable, :notice => 'Misc variable was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @misc_variable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /misc_variables/1
  # DELETE /misc_variables/1.xml
  def destroy
    @misc_variable = MiscVariable.find(params[:id])
    @misc_variable.destroy

    respond_to do |format|
      format.html { redirect_to(misc_variables_url) }
      format.xml  { head :ok }
    end
  end
end
