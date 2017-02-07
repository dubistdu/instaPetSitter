class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all

    if params[:latitude] && params[:longitude]
      nearby_users = User.near([params[:latitude], params[:longitude]], 40)
    else
      nearby_users = @users
    end

    @dog_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "dog")
    @cat_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "cat")
    @other_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "other")
    @multi_sitters = @dog_sitters & @cat_sitters & @other_sitters
    # ^^^ Can not write ruby code in squel (line 1-3) The way to write ruby code is line4


    @dogs_lat_and_lng = @dog_sitters.map { |user| { latitude: user.latitude, longitude: user.longitude } }
    @cats_lat_and_lng  = @cat_sitters.map { |user| { latitude: user.latitude, longitude: user.longitude } }
    @others_lat_and_lng  = @other_sitters.map { |user| { latitude: user.latitude, longitude: user.longitude } }
    @multis_lat_and_lng  = @multi_sitters.map { |user| { latitude: user.latitude, longitude: user.longitude } }

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

    if (params[:city].blank? || params[:state].blank?) && params[:zip].blank?
      redirect_to search_users_path, :flash => { :notice => "Please enter City and State or Zip code to search for sitter" }
      return
    else
      location = [params[:city], params[:state], params[:zip]].compact.join(',')
    end

    if params[:size_dog].present?
      @users = @users.includes(:sit_pets).where("sit_pets.size" => params[:size_dog])
    end

    # Limit the search to only the kinds of pets the user checked
    @users = @users.includes(:sit_pets).where("sit_pets.pet_kind" => params[:pet_kind])

    # All other work is done, finally just find the nearby users
    nearby_users = @users.near(location, 20)

    # All work is done and we have nearby users, so split them into groups
    @dog_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "dog")
    @cat_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "cat")
    @other_sitters = nearby_users.includes(:sit_pets).where("sit_pets.pet_kind" => "other")
    @multi_sitters = @dog_sitters & @cat_sitters & @other_sitters

    @dogs_lat_and_lng = @dog_sitters.map { |user| { latitude: user.latitude, longitude: user.longitude } }
    @cats_lat_and_lng  = @cat_sitters.map { |user| { latitude: user.latitude, longitude: user.longitude } }
    @others_lat_and_lng  = @other_sitters.map { |user| { latitude: user.latitude, longitude: user.longitude } }
    @multis_lat_and_lng  = @multi_sitters.map { |user| { latitude: user.latitude, longitude: user.longitude } }

    render :results
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
