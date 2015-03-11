class BeekeepersController < ApplicationController
  def show
    @beekeeper = Beekeeper.find(params[:id])
  end

  def new
  end

  def create
    @beekeeper = Beekeeper.new(beekeeper_params)

    @beekeeper.save
    redirect_to @beekeeper
  end
 
  private
    def beekeeper_params
      params.require(:beekeeper).permit(:fname, :lname, :region)
    end
end
