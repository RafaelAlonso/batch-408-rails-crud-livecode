class PetsController < ApplicationController

  def index
    # pega todos os Pets do BD
    @pets = Pet.all
  end

  def show
    # um objeto específico do BD
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save

    redirect_to pet_path(@pet)
  end

  def mark_as_returned
    @pet = Pet.find(params[:id])

    @pet.update(returned: true)

    redirect_to pet_path(@pet)
  end

  def destroy
    @pet = Pet.find(params[:id])

    @pet.destroy

    redirect_to root_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :color, :species, :where, :found_on)
  end


end
