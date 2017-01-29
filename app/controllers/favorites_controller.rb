class FavoritesController < ApplicationController
  # GET /favorites
  def index
    @favorites = Favorite.all
  end

  # GET /favorites/1
  def show
    @favorite = Favorite.find(params[:id])
  end

  # GET /favorites/new
  def new
    @favorite = Favorite.new
  end

  # GET /favorites/1/edit
  def edit
    @favorite = Favorite.find(params[:id])
  end

  # POST /favorites
  def create
    @favorite = Favorite.new(favorite_params)

    if @favorite.save
      redirect_to @favorite, notice: 'Favorite was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /favorites/1
  def update
    @favorite = Favorite.find(params[:id])
    if @favorite.update(favorite_params)
      redirect_to @favorite, notice: 'Favorite was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /favorites/1
  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_url, notice: 'Favorite was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def favorite_params
      params.require(:favorite).permit(:user_id, :sitter_id)
    end
end
