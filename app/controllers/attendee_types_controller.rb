class AttendeeTypesController < ApplicationController
  # GET /attendee_types
  # GET /attendee_types.xml
  def index
    @attendee_types = AttendeeType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attendee_types }
    end
  end

  # GET /attendee_types/1
  # GET /attendee_types/1.xml
  def show
    @attendee_type = AttendeeType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attendee_type }
    end
  end

  # GET /attendee_types/new
  # GET /attendee_types/new.xml
  def new
    @attendee_type = AttendeeType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attendee_type }
    end
  end

  # GET /attendee_types/1/edit
  def edit
    @attendee_type = AttendeeType.find(params[:id])
  end

  # POST /attendee_types
  # POST /attendee_types.xml
  def create
    @attendee_type = AttendeeType.new(params[:attendee_type])

    respond_to do |format|
      if @attendee_type.save
        flash[:notice] = 'AttendeeType was successfully created.'
        format.html { redirect_to(@attendee_type) }
        format.xml  { render :xml => @attendee_type, :status => :created, :location => @attendee_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attendee_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attendee_types/1
  # PUT /attendee_types/1.xml
  def update
    @attendee_type = AttendeeType.find(params[:id])

    respond_to do |format|
      if @attendee_type.update_attributes(params[:attendee_type])
        flash[:notice] = 'AttendeeType was successfully updated.'
        format.html { redirect_to(@attendee_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attendee_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attendee_types/1
  # DELETE /attendee_types/1.xml
  def destroy
    @attendee_type = AttendeeType.find(params[:id])
    @attendee_type.destroy

    respond_to do |format|
      format.html { redirect_to(attendee_types_url) }
      format.xml  { head :ok }
    end
  end
end
