class Category < ActiveRecord::Base
	has_many :listings, through: :listing_categories
end
