class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :delete]

  def index
    @pets = Pet.all
    # if I don't redirect... render
    # rails looks for a template
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    params[:pet][:species].downcase!
    @pet = Pet.new(pet_params)
    @pet.save

    redirect_to pets_path
  end

  def edit
  end

  def update
    params[:pet][:species].downcase!
    @pet.update(pet_params)

    redirect_to pets_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end
end
