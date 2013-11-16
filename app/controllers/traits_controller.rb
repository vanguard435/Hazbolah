class TraitsController < ApplicationController
  def index
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

  def destroy
    @dtrait = Trait.find(params[:id])
    @dtrait.destroy
    redirect_to dashboard_index_path
  end

  def trait_params
  	params.require(:trait).permit(:name)
  end

end
