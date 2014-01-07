class City < ActiveRecord::Base
	has_many :listings
	has_many :city_scores
end
