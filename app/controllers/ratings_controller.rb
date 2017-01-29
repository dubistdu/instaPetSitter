class RatingsController < ApplicationController
  # GET /ratings
  def index
    @ratings = Rating.all
  end

  # GET /ratings/1
  def show
    @rating = Rating.find(params[:id])
  end

  # GET /ratings/new
  def new
    @rating = Rating.new
  end

  # GET /ratings/1/edit
  def edit
    @rating = Rating.find(params[:id])
  end

  # POST /ratings
  def create
    @rating = Rating.new(rating_params)

    if @rating.save
      redirect_to @rating, notice: 'Rating was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ratings/1
  def update
    @rating = Rating.find(params[:id])
    if @rating.update(rating_params)
      redirect_to @rating, notice: 'Rating was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ratings/1
  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
    redirect_to ratings_url, notice: 'Rating was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def rating_params
      params.require(:rating).permit(:star, :user_id, :sitter_id)
    end
end
