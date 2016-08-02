class CharactersController < ApplicationController

  def new
    @character = Character.new
    @house = House.all
  end

  def index
  end

  def show
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(character_params)
    @house = House.all
    if @character.save
      redirect_to house_path(@character.house_id), notice: "#{@character.name} was added to #{@house.name}."
    else
      render :new
    end
  end

  def update
    @house = House.all
    @character = Character.find(params[:id])
    @character.update(character_params)
    if @character.save
      redirect_to @character, notice: "#{@character.name} was updated."
    else
      render :edit
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to house_path(@character.house_id), notice: "#{@character.name} was killed."
  end

  def edit
    @house = House.all
    @character = Character.find(params[:id])
  end

    

  private
  def character_params
    params.require(:character).permit(:name, :photo_url, :house_id)
  end

end
