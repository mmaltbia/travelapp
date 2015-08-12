class HomeController < ApplicationController
  def index
  	@city = City.all
  	render :index
  end

  def show
  	@city = City.all
  	render :show
  end
end
