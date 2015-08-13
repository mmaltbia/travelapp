class CitiesController < ApplicationController

	def search
		if params[:search].present?
			cities = City.where("name LIKE ?", params[:search])
			if cities.any?
				@city = cities.first
				redirect_to city_path(@city)
			else
				redirect_to cities_path
			end
		else
			redirect_to cities_path
		end
	end	

	  def index
	  	@cities = City.all
	  	render :index
	  end

	  def show
	  	city_id = params[:id]
	  	@city = City.find_by(id: params[:id])
	  	@post = Post.where(city_id: city_id)
	  	render :show
	  end

	  def post_params
	    params.require(:post).permit(:author, :title, :body)
	  end
	end
