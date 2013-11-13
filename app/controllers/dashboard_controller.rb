class DashboardController < ApplicationController
	
  def index
  	@usertrait = current_user.traits.all
  end

  def profile
  end
end
