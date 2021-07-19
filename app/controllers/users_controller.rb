class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    user = User.find(params[:id])
    @name = user.name
    @profile = user.profile
    @occupation = user.occupation
    @position = user.position
    @prototypes = user.prototypes 
   end

  def create
    User.create(user_params)
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end


  
end
