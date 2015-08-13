class City < ActiveRecord::Base
	 # searchkick autocomplete: ['name']

	# def autocomplete
 #    render json: City.search(params[:search], autocomplete: true, limit: 10).map(&:name)
 #  end
end
