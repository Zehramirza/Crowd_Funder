class ProjectsController < ApplicationController

def index
	@project = Project.all
end

def show 
	@project = Project.find(params[:id])
end

def new

end

def edit

end 

def update 

end

def create
end


def destroy
end

end
