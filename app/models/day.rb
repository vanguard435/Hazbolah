class Day < ActiveRecord::Base
	has_many :day_trait
	has_many :traits, :through => :day_trait
	belongs_to :users
end
