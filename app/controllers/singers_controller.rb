class SingersController < ApplicationController
  before_action :set_singer, only: %i[ show edit update destroy ]

  # GET /singers or /singers.json


  def index
    binding.pry
    @singers = Singer.all
  end

  # GET /singers/1 or /singers/1.json
  def show
    Singer.notes = [19, 20]
    puts Singer.new.pub
  end

  # GET /singers/new
  def new
    @singer = Singer.new
  end

  # GET /singers/1/edit
  def edit
  end

  # POST /singers or /singers.json
  def create
    @singer = Singer.new(singer_params)

    respond_to do |format|
      if @singer.save
        format.html { redirect_to singer_url(@singer), notice: "Singer was successfully created." }
        format.json { render :show, status: :created, location: @singer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @singer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /singers/1 or /singers/1.json
  def update
    flash[:success] = "singer updated !!"
    respond_to do |format|
      if @singer.update(singer_params)
        format.html { redirect_to singer_url(@singer), notice: "Singer was successfully updated." }
        format.json { render :show, status: :ok, location: @singer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @singer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /singers/1 or /singers/1.json
  def destroy
    @singer.destroy

    respond_to do |format|
      format.html { redirect_to singers_url, notice: "Singer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_singer
      @singer = Singer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def singer_params
      params.fetch(:singer, {})
    end
end
