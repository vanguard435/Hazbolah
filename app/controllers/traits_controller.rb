class TraitsController < ApplicationController
  def index
  end

  def create
  	@trait = Trait.create(trait_params)
    TraitUser.create(:user_id => current_user.id, :trait_id => @trait.id)
    redirect_to dashboard_index_path
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
