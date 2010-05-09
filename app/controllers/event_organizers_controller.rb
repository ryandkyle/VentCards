class EventOrganizersController < ApplicationController
  # GET /event_organizers
  # GET /event_organizers.xml
  def index
    @event_organizers = EventOrganizer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @event_organizers }
    end
  end

  # GET /event_organizers/1
  # GET /event_organizers/1.xml
  def show
    @event_organizer = EventOrganizer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event_organizer }
    end
  end

  # GET /event_organizers/new
  # GET /event_organizers/new.xml
  def new
    @event_organizer = EventOrganizer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event_organizer }
    end
  end

  # GET /event_organizers/1/edit
  def edit
    @event_organizer = EventOrganizer.find(params[:id])
  end

  # POST /event_organizers
  # POST /event_organizers.xml
  def create
    @event_organizer = EventOrganizer.new(params[:event_organizer])

    respond_to do |format|
      if @event_organizer.save
        flash[:notice] = 'EventOrganizer was successfully created.'
        format.html { redirect_to(@event_organizer) }
        format.xml  { render :xml => @event_organizer, :status => :created, :location => @event_organizer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event_organizer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /event_organizers/1
  # PUT /event_organizers/1.xml
  def update
    @event_organizer = EventOrganizer.find(params[:id])

    respond_to do |format|
      if @event_organizer.update_attributes(params[:event_organizer])
        flash[:notice] = 'EventOrganizer was successfully updated.'
        format.html { redirect_to(@event_organizer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event_organizer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /event_organizers/1
  # DELETE /event_organizers/1.xml
  def destroy
    @event_organizer = EventOrganizer.find(params[:id])
    @event_organizer.destroy

    respond_to do |format|
      format.html { redirect_to(event_organizers_url) }
      format.xml  { head :ok }
    end
  end
end
