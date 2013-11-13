class TraitsController < ApplicationController
  def index
  end

  def create
  	@trait = Trait.create(trait_params)
    TraitUser.create(:user_id => current_user.id, :trait_id => @trait.id)
  end

  def new
  end

  def edit	
  end

  def show
  	Trait.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def trait_params
  	params.require(:trait).permit(:name)
  end

end
