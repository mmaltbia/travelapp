class HomeController < ApplicationController
  def index
  	@city = City.first(6)
  	render :index
  end
  def show
  	@city = City.all
  	render :show
  end
end
