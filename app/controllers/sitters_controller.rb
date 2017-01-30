class SittersController < ApplicationController
  # GET /sitters
  def index
    @sitters = Sitter.all
  end

  # GET /sitters/1
  def show
    @sitter = Sitter.find(params[:id])
  end

  # GET /sitters/new
  def new
    @sitter = Sitter.new
    @sitter.sit_pets.build
  end

  # GET /sitters/1/edit
  def edit
    @sitter = Sitter.find(params[:id])
  end

  # POST /sitters
  def create
    @sitter = Sitter.new(sitter_params)

    if @sitter.save
      redirect_to @sitter, notice: 'Sitter was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sitters/1
  def update
    @sitter = Sitter.find(params[:id])
    if @sitter.update(sitter_params)
      redirect_to @sitter, notice: 'Sitter was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sitters/1
  def destroy
    @sitter = Sitter.find(params[:id])
    @sitter.destroy
    redirect_to sitters_url, notice: 'Sitter was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def sitter_params
      params.require(:sitter).permit(:name, :address, :city, :state, :zipcode, :phone, :email, :lat, :long, :backyard, :preferences, :picture, sit_pets_attributes:[ :pet_kind, :breed, :dog_lg, :dog_md, :dog_sm, :cat, :other])
    end
end
