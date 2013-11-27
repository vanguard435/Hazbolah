class CounterController < ApplicationController

def create

	currentuserid = current_user.id
	daytraitid = DayTrait.find(params[:daytrait_id])
	daytraitid.icounter += 1
	daytraitid.save
	pi_trait_id = daytraitid.trait.id
	hazbolah = Trait.find(pi_trait_id)
	hazbolah.gcounter += 1
	hazbolah.save
	hazbolah2 = TraitUser.first(:conditions => ["trait_id = #{pi_trait_id} AND user_id = #{current_user.id}"])
	hazbolah2.counter += 1
	hazbolah2.save
    redirect_to dashboard_index_path
  end

  def index
  	@countershow = TraitUser.find(params[current_user.id])
  end

 end