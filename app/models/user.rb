class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :trait_user
  has_many :traits, :through => :trait_user

  def ctraituserfind
  	@findtraituser = Trait.find(n.id).trait_user.first.counter
  end

end