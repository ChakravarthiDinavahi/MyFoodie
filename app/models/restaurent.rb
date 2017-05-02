class Restaurent < ActiveRecord::Base
  has_many reviews, :as=> reviewable
  #  has_many addresses, :as=> addressable
end
