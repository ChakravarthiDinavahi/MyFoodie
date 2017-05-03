class RestaurentItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :restaurent
end
