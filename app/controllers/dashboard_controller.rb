class DashboardController < ApplicationController

  def days

      @daytrait = DayTrait.where(day_id: params[:day_id])
      respond_to do |format|
   		format.js{
   		  render :json => @daytrait
   		}
   	end


    #After passing in the params, I have no idea how to represent 
    #the above data through ajax or smth.
    #yes. 8 hours of searching and this is all i learnt. amazing.


  end	

  def index
  	@usertrait = current_user.traits.all
   	@daysall = current_user.days.all
  end

  def profile
  end

  def comparison
  end
  
end
