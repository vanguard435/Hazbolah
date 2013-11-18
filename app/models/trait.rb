class Trait < ActiveRecord::Base
	before_create :drop_the_case
  has_many :trait_user
  has_many :users, :through => :trait_user
def drop_the_case
  self.name.downcase!
end
end
