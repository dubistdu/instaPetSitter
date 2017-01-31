class SitPetsController < ApplicationController
  # GET /sit_pets
  def index
    @sit_pets = SitPet.all
  end

  # GET /sit_pets/1
  def show
    @sit_pet = SitPet.find(params[:id])
  end

  # GET /sit_pets/new
  def new
    @sit_pet = SitPet.new
  end

  # GET /sit_pets/1/edit
  def edit
    @sit_pet = SitPet.find(params[:id])
  end

  # POST /sit_pets
  def create
    @sit_pet = SitPet.new(sit_pet_params)

    if @sit_pet.save
      redirect_to @sit_pet, notice: 'Sit pet was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sit_pets/1
  def update
    @sit_pet = SitPet.find(params[:id])
    if @sit_pet.update(sit_pet_params)
      redirect_to @sit_pet, notice: 'Sit pet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sit_pets/1
  def destroy
    @sit_pet = SitPet.find(params[:id])
    @sit_pet.destroy
    redirect_to sit_pets_url, notice: 'Sit pet was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def sit_pet_params
      params.require(:sit_pet).permit(:pet_kind, :breed, :size, :user_id)
    end
end
