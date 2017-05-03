class Address < ActiveRecord::Base
  # belongs_to :user
  # belongs_to :restaurent
  belongs_to :addressable, :polymorphic => true

end
