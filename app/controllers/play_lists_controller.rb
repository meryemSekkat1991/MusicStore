class PlayListsController < ApplicationController
  before_action :set_play_list, only: %i[ show edit update destroy ]

  # GET /play_lists or /play_lists.json
  def index
    @play_lists = PlayList.all
  end

  # GET /play_lists/1 or /play_lists/1.json
  def show
  end

  # GET /play_lists/new
  def new
    @play_list = PlayList.new
  end

  # GET /play_lists/1/edit
  def edit
  end

  # POST /play_lists or /play_lists.json
  def create
    @play_list = PlayList.new(play_list_params)

    respond_to do |format|
      if @play_list.save
        format.html { redirect_to play_list_url(@play_list), notice: "Play list was successfully created." }
        format.json { render :show, status: :created, location: @play_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @play_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /play_lists/1 or /play_lists/1.json
  def update
    respond_to do |format|
      if @play_list.update(play_list_params)
        format.html { redirect_to play_list_url(@play_list), notice: "Play list was successfully updated." }
        format.json { render :show, status: :ok, location: @play_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @play_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /play_lists/1 or /play_lists/1.json
  def destroy
    @play_list.destroy

    respond_to do |format|
      format.html { redirect_to play_lists_url, notice: "Play list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play_list
      @play_list = PlayList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def play_list_params
      params.require(:play_list).permit(:title)
    end
end
