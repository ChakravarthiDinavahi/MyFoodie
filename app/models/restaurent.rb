class Restaurent < ActiveRecord::Base
  has_many :restaurent_items
  has_many :items, through: :restaurent_items
  has_many :reviews, :as=> :reviewable
  has_many :addresses, :as=> :addressable
end
