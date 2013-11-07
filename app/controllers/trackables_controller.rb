class TrackablesController < ApplicationController
  def new
  end
  def create
  end
  def show

  end
  def search
  	render :text => params[:q]
  	@new = User.create(params[:q]) 
  end

end
