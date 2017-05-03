class Item < ActiveRecord::Base
    has_many :reviews, :as=> :reviewable
    has_many :restaurent_items
    has_many :restaurents, through: :restaurent_items
end
