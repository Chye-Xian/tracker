class HivesController < ApplicationController
   def show
    @hive = Hive.find(params[:id])
  end

  def new
  end

  def create
    @beekeeper = Beekeeper.find(params[:beekeeper_id])
    @hive = @beekeeper.hives.create(hive_params)
    redirect_to beekeeper_path(@beekeeper)
  end

  private
    def hive_params
      params.require(:hive).permit(:name, :population)
    end 
end
