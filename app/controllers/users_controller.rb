class UsersController < ApplicationController
	def new
		@user = User.new
		render 'new'
	end

	def create
	    @user = User.new(user_params)
	    if @user.save
	      flash[:success] = "Welcome to the Sample App!"
	      render 'edit'
	    else
	      render 'new'
	    end
	  end

	def edit
	    @user = User.find(params[:id])
	  end

	def update
	    @user = User.find(params[:id])
	    if @user.update_attributes(user_params)
	      flash[:success] = "Profile updated"
	      default = Story.where(chapter: '1').order("RANDOM()").first.id
	      @user.update_attributes(:story_id => default)
	      render 'thankyou'
	    else
	      render 'edit'
	    end
	  end

  private

    def user_params
      params.require(:user).permit(:phone_number, :birthday, :time)
    end
end
