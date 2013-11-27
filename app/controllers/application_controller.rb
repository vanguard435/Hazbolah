class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
 def after_sign_in_path_for(user)
 	@datenow = DateTime.now
    @datecreate = Day.find_or_create_by(:currentnow => @datenow.strftime("%d/%m/%Y"), :user_id => current_user.id) 
    return dashboard_index_path
  end
end
