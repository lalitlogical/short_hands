class ShortHandsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]
  before_action :set_shorthand, only: [:show, :edit, :update, :destroy]

  # GET /shorthands
  # GET /shorthands.json
  def index
    @shorthands = ShortHand._search(params, [], 10)
  end

  # GET /shorthands/1
  # GET /shorthands/1.json
  def show
  end

  def autocomplete
    render json: ShortHand.autocomplete(params)
  end

  # GET /shorthands/new
  def new
    @shorthand = ShortHand.new
  end

  # GET /shorthands/1/edit
  def edit
  end

  # POST /shorthands
  # POST /shorthands.json
  def create
    @shorthand = ShortHand.new(gist_params)
    @shorthand.user = current_user

    respond_to do |format|
      if @shorthand.save
        format.html { redirect_to short_hands_url, notice: 'Shorthand was successfully created.' }
        format.json { render :show, status: :created, location: @gist }
      else
        format.html { render :new }
        format.json { render json: @shorthand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shorthands/1
  # PATCH/PUT /shorthands/1.json
  def update
    respond_to do |format|
      if @shorthand.update(gist_params)
        format.html { redirect_to short_hands_url, notice: 'Shorthand was successfully updated.' }
        format.json { render :show, status: :ok, location: @gist }
      else
        format.html { render :edit }
        format.json { render json: @shorthand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shorthands/1
  # DELETE /shorthands/1.json
  def destroy
    @shorthand.destroy
    respond_to do |format|
      format.html { redirect_to short_hands_url, notice: 'Shorthand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shorthand
      @shorthand = ShortHand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gist_params
      params.require(:short_hand).permit(:description, :tags, :code)
    end
end
