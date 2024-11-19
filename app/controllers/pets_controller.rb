class PetsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user

    if @pet.save
      redirect_to pets_path(@pet), notice: "Your pet has been succesfully added!"
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def pet_params
    params.require(:pet).permit(:pet_name, :pet_details, :picture_url)
  end
end
