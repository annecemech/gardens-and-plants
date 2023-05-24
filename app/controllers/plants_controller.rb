class PlantsController < ApplicationController

  before_action :set_garden, only: [:new, :create]
  before_action :set_plant, only: [:destroy]

  def create
    @plant = Plant.new(plant_params)
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @plant.destroy
    redirect_to garden_path(@plant.garden), status: :see_other
  end

  private

  def set_garden
    @garden = Garden.find(params[:garden_id])
  end
  def set_plant
    @plant = Plant.find(params[:id])
  end
  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
