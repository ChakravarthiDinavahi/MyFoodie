class RestaurantItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :restaurant
end
