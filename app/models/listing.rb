class Listing < ActiveRecord::Base
	belongs_to :city
	belongs_to :user
	belongs_to :category
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
