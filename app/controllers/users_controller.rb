class UsersController < ApplicationController
  before_filter :correct_user, only: [:show, :edit, :update]
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user, notice: 'Your account has been successfully updated.'
    else 
      render 'edit'
    end
  end
  
  private 
  
    def correct_user
      @user = User.find(params[:id])
      if @user != current_user
        redirect_to root_path, notice: 'Please sign in.'
      end
    end
end
