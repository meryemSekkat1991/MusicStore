class SongsController < ApplicationController
  before_action :set_song, only: %i[ show edit update destroy ]

  # GET /songs or /songs.json
  def index
    session[:user_id] = 4
    cookies.signed[:username] = { value: "mima", expires: 1.month.from_now}
    flash.now[:success] = "songs"
    @songs = Song.all
    respond_to do |format|
      format.html
      format.json { render json: @posts }
      format.xml { render xml: @songs}
    end
  end


  # GET /songs/1 or /songs/1.json
  def show
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs or /songs.json
  def create
    @song = Song.new(song_params)

    if @song.valid?
      respond_to do |format|
        if @song.save
          format.html { redirect_to song_url(@song), notice: "Song was successfully created." }
          format.json { render :show, status: :created, location: @song }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @song.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /songs/1 or /songs/1.json
  def update
    redirect_to songs_path, success: "updated successfully"
  end

  # DELETE /songs/1 or /songs/1.json
  def destroy
    @song.destroy

    respond_to do |format|
      format.html { redirect_to songs_url, notice: "Song was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def song_params
      params.require(:song).permit(:title, :slug)
    end
end
