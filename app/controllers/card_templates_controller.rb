class CardTemplatesController < ApplicationController
  # GET /card_templates
  # GET /card_templates.xml
  def index
    @card_templates = CardTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @card_templates }
    end
  end

  # GET /card_templates/1
  # GET /card_templates/1.xml
  def show
    @card_template = CardTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @card_template }
    end
  end

  # GET /card_templates/new
  # GET /card_templates/new.xml
  def new
    @card_template = CardTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @card_template }
    end
  end

  # GET /card_templates/1/edit
  def edit
    @card_template = CardTemplate.find(params[:id])
  end

  # POST /card_templates
  # POST /card_templates.xml
  def create
    @card_template = CardTemplate.new(params[:card_template])

    respond_to do |format|
      if @card_template.save
        flash[:notice] = 'CardTemplate was successfully created.'
        format.html { redirect_to(@card_template) }
        format.xml  { render :xml => @card_template, :status => :created, :location => @card_template }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @card_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /card_templates/1
  # PUT /card_templates/1.xml
  def update
    @card_template = CardTemplate.find(params[:id])

    respond_to do |format|
      if @card_template.update_attributes(params[:card_template])
        flash[:notice] = 'CardTemplate was successfully updated.'
        format.html { redirect_to(@card_template) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @card_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /card_templates/1
  # DELETE /card_templates/1.xml
  def destroy
    @card_template = CardTemplate.find(params[:id])
    @card_template.destroy

    respond_to do |format|
      format.html { redirect_to(card_templates_url) }
      format.xml  { head :ok }
    end
  end
end
