class AdvertisementResponsesController < ApplicationController
  # GET /advertisement_responses
  # GET /advertisement_responses.json
  def index
    @advertisement_responses = AdvertisementResponse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @advertisement_responses }
    end
  end

  # GET /advertisement_responses/1
  # GET /advertisement_responses/1.json
  def show
    @advertisement_response = AdvertisementResponse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @advertisement_response }
    end
  end

  # GET /advertisement_responses/new
  # GET /advertisement_responses/new.json
  def new
    @advertisement_response = AdvertisementResponse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @advertisement_response }
    end
  end

  # GET /advertisement_responses/1/edit
  def edit
    @advertisement_response = AdvertisementResponse.find(params[:id])
  end

  # POST /advertisement_responses
  # POST /advertisement_responses.json
  def create
    @advertisement_response = AdvertisementResponse.new(params[:advertisement_response])

    respond_to do |format|
      if @advertisement_response.save
        format.html { redirect_to @advertisement_response, :notice => 'Advertisement response was successfully created.' }
        format.json { render :json => @advertisement_response, :status => :created, :location => @advertisement_response }
      else
        format.html { render :action => "new" }
        format.json { render :json => @advertisement_response.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /advertisement_responses/1
  # PUT /advertisement_responses/1.json
  def update
    @advertisement_response = AdvertisementResponse.find(params[:id])

    respond_to do |format|
      if @advertisement_response.update_attributes(params[:advertisement_response])
        format.html { redirect_to @advertisement_response, :notice => 'Advertisement response was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @advertisement_response.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /advertisement_responses/1
  # DELETE /advertisement_responses/1.json
  def destroy
    @advertisement_response = AdvertisementResponse.find(params[:id])
    @advertisement_response.destroy

    respond_to do |format|
      format.html { redirect_to advertisement_responses_url }
      format.json { head :no_content }
    end
  end
end
