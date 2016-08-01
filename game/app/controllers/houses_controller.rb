class HousesController < ApplicationController
  def new
    @house = House.new
  end

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    @character = Character.where(house: params[:id])
  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to @house, notice: "#{@house.name} was added."
    else
      render :new
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path, notice: "#{@house.name} Was Eliminated!"
  end

  private
  def house_params
    params.require(:house).permit(:name, :rulers_of_the, :photo_url)
  end


end
