class PetsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
    @pets = Pet.all

    @markers = @pets.geocoded.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {pet: pet})
      }
    end
  end

  def new
    @pet = Pet.new
  end

  def show
    @pet = Pet.find(params[:id])
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
