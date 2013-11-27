class DashboardController < ApplicationController

  def days
      dayclicked = params[:day_id]
      @daytrait = DayTrait.where(day_id: params[:day_id])
      @day2 = Day.first(:conditions => ["id = #{dayclicked} AND user_id = #{current_user.id}"])
      @clickeddate = @day2.id
      cookies[:nday_id] = @clickeddate
      cookies[:nday_id] || []
      respond_to do |format|
        format.js   
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
