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
  end	

  def index
  	@usertrait = current_user.traits.all
   	@daysall = current_user.days.all
    @traitexistence=TraitUser.where(user_id: current_user.id)
  end

  def profile
  end

  def comparison
  end
  
end
