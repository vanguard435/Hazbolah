class CounterController < ApplicationController

def create
	@usertrait = current_user.traits.all
	@usertrait.each do |n|
		@t = n.gcounter += 1
	end
    redirect_to dashboard_index_path
  end

  def index
  	@countershow = Trait.find(params[current_user.id])
  end

 end