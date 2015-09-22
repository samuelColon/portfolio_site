class HomeController < ApplicationController
	before_action :find_project, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show, :bio, :contact]

	def index
		@project = Project.last
	end

	def bio
		render 'bio'
	end

	def contact
		render 'contact'
	end
end