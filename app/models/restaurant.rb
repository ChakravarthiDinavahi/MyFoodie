class Restaurant < ActiveRecord::Base
  has_many :restaurant_items
  has_many :items, through: :restaurant_items
  has_many :reviews, :as=> :reviewable
  has_many :addresses, :as=> :addressable
  accepts_nested_attributes_for :addresses
end
