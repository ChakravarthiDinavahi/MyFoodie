class RestaurantItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :restaurant


  validates :restaurant, :presence => true, :uniqueness => {:scope => :item, :message => "this item already exists in this restaurant.."}

end
