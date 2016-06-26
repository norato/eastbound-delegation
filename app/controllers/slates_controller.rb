class SlatesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_slate, only: [:show, :edit, :update, :destroy]
  layout false

  # GET /slates
  # GET /slates.json
  def index
    @slates = Slate.all
  end

  # GET /slates/1
  # GET /slates/1.json
  def show
  end

  # GET /slates/new
  def new
    @slate = Slate.new
  end

  # GET /slates/1/edit
  def edit
  end

  # POST /slates
  # POST /slates.json
  def create
    @slate = Slate.new(slate_params)
    @slate.delegates << Delegate.where(id: params[:delegates])

    respond_to do |format|
      if @slate.save
        format.html { redirect_to @slate, notice: 'Slate was successfully created.' }
        format.json { render :show, status: :created, location: @slate }
      else
        format.html { render :new }
        format.json { render json: @slate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slates/1
  # PATCH/PUT /slates/1.json
  def update
    @slate.delegates = []
    @slate.delegates << Delegate.where(id: params[:delegates])
    respond_to do |format|
      if @slate.update(slate_params)
        format.html { redirect_to @slate, notice: 'Slate was successfully updated.' }
        format.json { render :show, status: :ok, location: @slate }
      else
        format.html { render :edit }
        format.json { render json: @slate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slates/1
  # DELETE /slates/1.json
  def destroy
    @slate.destroy
    respond_to do |format|
      format.html { redirect_to slates_url, notice: 'Slate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slate
      @slate = Slate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slate_params
      params.require(:slate).permit(:image, :card_title, :card_description, :title, :tweet)
    end
end
