class EventToSponsorsController < ApplicationController
  # GET /event_to_sponsors
  # GET /event_to_sponsors.xml
  def index
    @event_to_sponsors = EventToSponsor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @event_to_sponsors }
    end
  end

  # GET /event_to_sponsors/1
  # GET /event_to_sponsors/1.xml
  def show
    @event_to_sponsor = EventToSponsor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event_to_sponsor }
    end
  end

  # GET /event_to_sponsors/new
  # GET /event_to_sponsors/new.xml
  def new
    @event_to_sponsor = EventToSponsor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event_to_sponsor }
    end
  end

  # GET /event_to_sponsors/1/edit
  def edit
    @event_to_sponsor = EventToSponsor.find(params[:id])
  end

  # POST /event_to_sponsors
  # POST /event_to_sponsors.xml
  def create
    @event_to_sponsor = EventToSponsor.new(params[:event_to_sponsor])

    respond_to do |format|
      if @event_to_sponsor.save
        flash[:notice] = 'EventToSponsor was successfully created.'
        format.html { redirect_to(@event_to_sponsor) }
        format.xml  { render :xml => @event_to_sponsor, :status => :created, :location => @event_to_sponsor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event_to_sponsor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /event_to_sponsors/1
  # PUT /event_to_sponsors/1.xml
  def update
    @event_to_sponsor = EventToSponsor.find(params[:id])

    respond_to do |format|
      if @event_to_sponsor.update_attributes(params[:event_to_sponsor])
        flash[:notice] = 'EventToSponsor was successfully updated.'
        format.html { redirect_to(@event_to_sponsor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event_to_sponsor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /event_to_sponsors/1
  # DELETE /event_to_sponsors/1.xml
  def destroy
    @event_to_sponsor = EventToSponsor.find(params[:id])
    @event_to_sponsor.destroy

    respond_to do |format|
      format.html { redirect_to(event_to_sponsors_url) }
      format.xml  { head :ok }
    end
  end
end
