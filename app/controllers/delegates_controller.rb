class DelegatesController < ApplicationController
  before_action :set_delegate, only: [:show]
  before_action :set_states

  # GET /delegates
  # GET /delegates.json
  def index
    if params[:state]
      @delegates = Delegate.where(state: params[:state]).where("links like ?", "%gofundme%")
      @delegates.first or redirect_to "http://www.adoptaberniedelegate.com/" and return
    else
      @delegates = Delegate.order(:state).all
      render "boring_index"
    end
  end

  # GET /delegates/1
  # GET /delegates/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delegate
			@delegate = Delegate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delegate_params
      params.require(:delegate).permit(:state, :name_last, :name_first, :links)
    end

    def set_states
      @states = Delegate.where("links like ?", "%gofundme%").pluck(:state).uniq.sort
    end
end
