class City < ActiveRecord::Base
	has_many :listings
	has_many :city_scores
	has_many :category_weights
	accepts_nested_attributes_for :category_weights
end
