class UsersController < ApplicationController
  
  def index 
    render json: User.all
  end 
  
  def create 
    @user = User.new(params_user)
    if user.save
      render json: @user
    else 
      render json: @user.errors.full_messages, status: 422
    end 
  end 
  
  def show 
    @user = User.find(params[:id])
    render json: @user
    
  end 
  
  def update 
    @user = User.find(params[:id])
    if @user.update(params_user)
      render json: @user, status: 201
    else 
      render json: @user.errors.full_messages, status: 422
    end 
  end 
  
  def destroy 
    @user = User.find(params[:id])
    @user.destroy
  end 
  
  
  private 
  
  def params_user
    params.require(:user).permit(:name,:email)
  end 
  
end