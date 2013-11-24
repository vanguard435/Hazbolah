class CounterController < ApplicationController

def create

	currentuserid = current_user.id

	pi_trait_id = params[:trait_id]
	hazbolah = Trait.find(pi_trait_id)
	hazbolah.gcounter += 1
	hazbolah.save
	hazbolah2 = TraitUser.first(:conditions => ["trait_id = #{pi_trait_id} AND user_id = #{current_user.id}"])
	hazbolah2.counter += 1
	hazbolah2.save

=begin
//Everything below is bugged out, If i am unable to fix prior steps, this will not work at all.
	datenow = params[:date_id]
	dayidnow = Day.first(:conditions => [":user_id = currentuserid AND :currentnow = datenow"])
	icounteradd = DayTrait.first(:conditions => ["trait_id = #{pi_trait_id} AND day_id = #{dayidnow.id}"])
    icounteradd.icounter += 1
    icounteradd.save
    redirect_to dashboard_index_path
// Graphs after this. Mailer when graphs are complete. ETA 3 days. or no sleep.
=end

  end

  def index
  	@countershow = TraitUser.find(params[current_user.id])
  end

 end