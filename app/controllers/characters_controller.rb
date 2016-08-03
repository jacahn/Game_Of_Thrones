class CharactersController < ApplicationController

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create(character_params)
    redirect_to house_path(@house)
  end

  def destroy
    @house = House.find(params[:house_id])
    @character = @house.characters.find(params[:id])
    @character.destroy
    redirect_to house_path(@house)
  end

  private
    def character_params
      params.require(:name).permit(:title, :culture)
    end
end
