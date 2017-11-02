class Item < ActiveRecord::Base
    has_many :reviews, :as=> :reviewable
    has_many :restaurant_items
    has_many :restaurants, through: :restaurant_items
    accepts_nested_attributes_for :restaurant_items, :allow_destroy => true
end
