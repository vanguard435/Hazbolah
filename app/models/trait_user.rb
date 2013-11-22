class TraitUser < ActiveRecord::Base
	belongs_to :trait
	belongs_to :user
end
