class Trait < ActiveRecord::Base

  has_many :trait_user
  has_many :users, :through => :trait_user

end
