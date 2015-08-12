class City < ActiveRecord::Base
	searchkick autocomplete: ['name']
end
