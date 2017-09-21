class EventmsController < ApplicationController

  before_action :set_eventm, only: [:show, :update, :destroy]

  # GET /eventms
  def index
    @eventms = Eventm.all

    render json: @eventms
  end

  # GET /eventms/1
  def show
    render json: @eventm
  end

  # GET /signin/eventm/1
  def showMyEvent
    @response = HTTParty.get("http://192.168.99.101:3006/eventms/")
    @result = JSON.parse(@response.body)
    # @result.delete_if {|key, value| key["id"] != params [:id].to_i}
    render json: @result
    #end
  end

  # POST /eventms
  def create
    @eventm = Eventm.new(eventm_params)

    if @eventm.save
      render json: @eventm, status: :created, location: @eventm
    else
      render json: @eventm.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /eventms/1
  def update
    if @eventm.update(eventm_params)
      render json: @eventm
    else
      render json: @eventm.errors, status: :unprocessable_entity
    end
  end
  
  # DELETE /eventms/1
  def destroy
    @eventm.destroy
    #    respond_to do |format|
    #	format.html {redirect_to eventms_path, notice: 'Event was destroyed'}
    #	format.json {head :no_content}
    #   end
  end

  #def createPostLogin
  #@eventm = Eventm.new(eventm_params)
  #respond_to do |format|
  #if @eventm.save
  #EventUser.create!(eventm_id: @eventm.id, user_id: current_user.id)

  #format.html { redirect_to @eventm, notice: 'Event was successfully created.' }
  #format.json{ render :show, status: :created, location: @eventm}

  #else
  # format.html { render :new }
  # format.json { render json: @eventm.errors, status: :unprocessable_entity }

  #end

  #end
  #end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_eventm
    @eventm = Eventm.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def eventm_params
    params.require(:eventm).permit(:name, :description, :address, :phone, :start_time, :end_time, :latitude, :longitude, :owner_id)
  end
end
