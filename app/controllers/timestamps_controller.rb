class TimestampsController < ApplicationController
  before_action :set_timestamp, only: [:show, :edit, :update, :destroy]

  # GET /timestamps
  # GET /timestamps.json
  def index
    @timestamps = Timestamp.all
  end

  # POST /timestamps
  # POST /timestamps.json
  def create
    puts timestamp_params[:hours]
    puts timestamp_params[:minutes]
    puts timestamp_params[:seconds]
    @timestamp = Timestamp.new(timestamp_params)
    @timestamp.start = (timestamp_params[:hours].to_i * 3600) + (timestamp_params[:minutes].to_i * 60) + timestamp_params[:seconds].to_i

    respond_to do |format|
      if @timestamp.save
        format.html { redirect_to root_path }
        format.json { render :show, status: :created, location: @timestamp }
      else
        format.html { render :new }
        format.json { render json: @timestamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timestamps/1
  # PATCH/PUT /timestamps/1.json
  def update
    respond_to do |format|
      if @timestamp.update(timestamp_params)
        format.html { redirect_to @timestamp, notice: 'Timestamp was successfully updated.' }
        format.json { render :show, status: :ok, location: @timestamp }
      else
        format.html { render :edit }
        format.json { render json: @timestamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timestamps/1
  # DELETE /timestamps/1.json
  def destroy
    @timestamp.destroy
    respond_to do |format|
      format.html { redirect_to timestamps_url, notice: 'Timestamp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def like
    @timestamp = Timestamp.find(params[:id])
    @timestamp.liked_by current_user
    respond_to do |format|
      format.js { }
    end
    # redirect_back fallback_location: root_path
  end

  def unlike
    @timestamp = Timestamp.find(params[:id])
    @timestamp.unliked_by current_user
    respond_to do |format|
      format.js { }
    end
  end

  def vote
    @being_liked = nil
    if current_user
      @timestamp = Timestamp.find(params[:id])
      if current_user.liked? @timestamp
        @timestamp.unliked_by current_user
        @being_liked = false
      else
        @timestamp.liked_by current_user
        @being_liked = true
      end
    else
      # TODO: Add request to sign up or sign in
    end

    respond_to do |format|
      format.js { }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timestamp
      @timestamp = Timestamp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timestamp_params
      params.require(:timestamp).permit(:start, :comment, :episode_id, :segment_id, :hours, :minutes, :seconds)
    end
end
