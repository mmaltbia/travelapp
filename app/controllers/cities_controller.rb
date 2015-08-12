class CitiesController < ApplicationController

	def search
		if params[:search].present?
			@cities = City.search(params[:search])
		else
			@cities = City.all?
		end
	end	
  def index
  	@cities = City.all
  	render :index
  end

  def show
  	@city = City.search(params[:search])
  	render :show
  end
end
