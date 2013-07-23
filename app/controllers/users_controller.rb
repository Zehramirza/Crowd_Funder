class UsersController < ApplicationController

def index
end

def show
end

def new
	@user = User.new
end

def edit

end

def create
	    @user = User.new(params[:user])
  if @user.save
    auto_login(@user)
    redirect_to root_path, :notice => "Account created"
  else
    flash[:alert] = "Try again"
    render :new
  end
end

def update

end

def destroy
end

end

