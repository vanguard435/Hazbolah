class TraitsController < ApplicationController
  def index

        @daytrait = DayTrait.where(trait_id: params[:id]).first   
        @trait = @daytrait.trait.id
        @destruction = TraitUser.where(trait_id: @trait).first
        @destruction.destroy
        @daytrait.destroy
    redirect_to dashboard_index_path
  end

  def create
    @clickedalreadydate = cookies[:nday_id]
  	@trait = Trait.find_or_create_by(name: params[:trait][:name].downcase)
    TraitUser.find_or_create_by(:user_id => current_user.id, :trait_id => @trait.id)
    DayTrait.find_or_create_by(:day_id => @clickedalreadydate, :trait_id => @trait.id) 
    redirect_to dashboard_index_path
    return false
  end

  def new
  end

  def edit	
  end

  def show
  end

  def update
  end

  def delete

  end

  def trait_params
  	params.require(:trait).permit(:name)
  end

end
