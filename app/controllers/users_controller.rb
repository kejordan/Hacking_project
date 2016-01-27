class UsersController < ApplicationController
skip_before_action :authorize
  # before_action :set_user, only: [:show, :edit]

  def index
    @users = User.all
  end

  def show


  end

  def new
    @user = User.new
    # render '/users/new.html.erb'
  end

  def create
    @user = User.new(user_params)
  if @user.save
    session[:user_id] = @user.id
    redirect_to '/', notice: "Thank you for signing up!"
  else
    render :new
  end
  end

    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url }
        format.json { head :no_content }
      end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
