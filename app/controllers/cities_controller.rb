class CitiesController < ApplicationController

def search
		puts 'This is params search'
		puts params[:search]
	if params[:search].present?
		@cities = City.where("name LIKE ?", params[:search])
		puts 'these are the cities'
		puts @cities
	else
		@cities = City.all?
	end
	render :search
end	

  def index
  	@cities = City.all
  	render :index
  end

  def show
  	@city = City.find_by(id: params[:id])
  	render :show
  end
end