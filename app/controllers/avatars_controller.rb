class AvatarsController < ApplicationController
  def new
    @avatar = Avatar.new
  end
  
  def create
    @avatar = current_user.build_avatar(avatar_params)
    if @avatar.save
    	flash[:success] = "You're avatar has been created!"
      redirect_to user_avatar_path(current_user, @avatar)
    else
      flash[:error] = "#{@avatar.errors.inspect}"
      render 'new'
    end
  end

  def edit
    @avatar = current_user.avatar
  end

  def update
    @avatar = current_user.avatar

    if @avatar.update_attributes(avatar_params)
      flash[:success] = "Avatar updated"
      render 'show'
    else
      render 'edit'
    end
  end

  def show
    @avatar = current_user.avatar
  end

  private
    def avatar_params
      params.require(:avatar).permit(:age, :height, :weight, :male, :activeness)
    end
end
