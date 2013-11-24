class DayController < ApplicationController

	def days
		
	end

	def create
	@datenow = DateTime.now
    @datecreate = Day.find_or_create_by(:currentnow => @datenow.strftime("%d/%m/%Y"), :user_id => current_user.id) 
    redirect_to dashboard_index_path  
	end
end
