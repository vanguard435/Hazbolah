class TraitsController < ApplicationController
  def index
        @trait = TraitUser.where(trait_id: params[:id]).first   
        @trait.destroy
    redirect_to dashboard_index_path
  end

  def create
  	@trait = Trait.find_or_create_by(trait_params)
    TraitUser.find_or_create_by(:user_id => current_user.id, :trait_id => @trait.id)
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
