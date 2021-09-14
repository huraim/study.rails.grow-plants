class PlantController < ApplicationController
  def index
    @plants = Plant.all
  end

  def write
  end

  def create
    plant = Plant.new
    plant.title = params[:title]
    plant.step = params[:step] = 1
    plant.save

    redirect_to '/'
  end

  def detail
    @plant = Plant.find(params[:plant_id])
  end

  def update
    plant = Plant.find(params[:plant_id])
    plant.step += 1
    plant.save

    redirect_to "/detail/#{plant.id}"
  end

  def delete
    Plant.destroy(params[:plant_id])
    
    redirect_to '/'
  end
end
