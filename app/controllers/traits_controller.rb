class TraitsController < ApplicationController
  def index
        @clickedalreadydate = cookies[:nday_id]
        @daytrait = DayTrait.first(:conditions => ["id = #{params[:id]} AND day_id = #{@clickedalreadydate}"]) 
        @trait = @daytrait.trait.id
        @daytrait.destroy
    respond_to do |format|
      format.js
    end
  end

  def create
    @clickedalreadydate = cookies[:nday_id]
  	@trait = Trait.find_or_create_by(name: params[:trait][:name].downcase)
    TraitUser.find_or_create_by(:user_id => current_user.id, :trait_id => @trait.id)
    DayTrait.find_or_create_by(:day_id => @clickedalreadydate, :trait_id => @trait.id) 
    respond_to do |format|
      format.js
    end
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
