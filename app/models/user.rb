class User < ActiveRecord::Base
	has_many :listings
	has_many :city_scores
	has_many :category_scores
end
