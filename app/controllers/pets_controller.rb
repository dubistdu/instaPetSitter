class PetsController < ApplicationController
  # GET /pets
  def index
    @pets = Pet.all
  end

  # GET /pets/1
  def show
    @pet = Pet.find(params[:id])
  end

  # GET /pets/new
  def new
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
    @pet = Pet.find(params[:id])
  end

  # POST /pets
  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      redirect_to @pet, notice: 'Pet was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pets/1
  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to @pet, notice: 'Pet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pets/1
  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_url, notice: 'Pet was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def pet_params
      params.require(:pet).permit(:pet_kind, :breed, :size, :user_id)
    end
end
