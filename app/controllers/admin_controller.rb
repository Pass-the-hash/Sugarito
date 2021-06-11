class AdminController < ApplicationController
  def create
    @user = User.new params.require(:user).permit :name, :password, :email

    if user.save
      redirect_to @users
    else
      render 'errors/422', status: :unprocessable_entity
    end
  end

  def read
    @users=User.all
  end

  def show
    @user=User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(params.require(:user).permit :name, :email, :password)
      redirect_to @user
    else
      render 'errors/422', status: :unprocessable_entity
    end
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy

    redirect_to root_path
  end

end
