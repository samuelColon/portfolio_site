class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :edit, :update, :destroy]

	def index
	end

	def show
		
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(post_params)

		if @post.save 
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

  private

  def find_project
  	@project = Project.find(params[:name])
  end

  def get_params
  	params.require(:post).permit(:name, :category, :image, :description, :link)
  end
end