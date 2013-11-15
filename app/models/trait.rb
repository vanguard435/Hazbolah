class Trait < ActiveRecord::Base
validates :name, :uniqueness => true
after_rollback Trait.create
  has_many :trait_user
  has_many :users, :through => :trait_user
end
