class PetsController < ApplicationController

  def index
    # pega todos os Pets do BD
    @pets = Pet.all
  end

  def show
    # um objeto específico do BD
    @pet = Pet.find(params[:id])
  end

end
