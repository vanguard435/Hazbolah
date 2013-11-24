class Trait < ActiveRecord::Base

  has_many :trait_user
  has_many :users, :through => :trait_user

  has_many :day_trait
  has_many :days, :through => :day_trait
end
