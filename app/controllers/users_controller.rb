class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all
    # @dog_sitters = User.all.includes(:sit_pets).where("sit_pets.pet_kind": "dog")
    # @cat_sitters = User.all.includes(:sit_pets).where("sit_pets.pet_kind": "cat")

    if params[:latitude] && params[:longitude]
      nearby_users = User.near([params[:latitude], params[:longitude]], 40)
    else
      nearby_users = @users
    end

    @dog_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "dog")
    @cat_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "cat")
    @other_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "other")
    @multi_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => ["other", "dog", "cat"])
    # if params[:search].present?
    #   @locations = Location.near(params[:search], 50, :order => :distance)
    # else
    #   @locations = Location.all
    # end

  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
    @user.pets.build
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def search
  end

  def results
    @users = User.all
    if params[:ratings].present?
      @users = @users.includes(:ratings).where("ratings.star" => params[:ratings])
    end

    location = [params[:city], params[:state], params[:zip]].compact.join(',')

    nearby_users = @users.near(location, 20)

    @dog_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "dog")
    @cat_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "cat")
    @other_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "other")

    @multi_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => ["other", "dog", "cat"])
    # also have to limit it by ratings if present
    # limit by kind of pet if present
    # limit by size if present
    # limit by how many ...


    if params[:sit_pets].present?
      @dog_sittes = @dog_sitters.
    if params[:size_dog].present?
      @dog_sitters = @dog_sitters.where("sit_pets.size" => params[:size_dog])
    end




    # @multi_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => )

    render :results
 # @restaurants.where(cuisine: params[:cuisine]) if params[:cuisine].present?
    # render :index # render index page for the serach results. displaying Search results on index page.
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :address, :city, :state, :zip, :phone, :email, :picture, :about_me, :backyard, :preferences, pets_attributes:[:pet_kind, :breed, :size])
    end

end
