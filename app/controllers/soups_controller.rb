class SoupsController < ApplicationController
	before_action :fetch_soup, only: [:show, :edit, :update, :destory, :toggle_featured]

	def fetch_soup
		@soup  = Soup.find (params[:id])
	end

	def show
	
		respond_to do |format|
			format.html 
			format.json { render json: @soup}
		end
	end

	def index
		@soup = Soup.all

		respond_to do |format|
			format.html 
			format.json { render json: @soup }
		end
	end

	def new
		
	end

	def efit
		
	end

	def update
		
	end

	def destory
		
	end

	def toggle_featured
		@soup.toggle!(:featured)
		flash[:notice] = "successfully change"
		redirect_to @soup
	end

	def secret_soups
		session[:vip] = true
		redirect_to root_path
	end

end
