class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private  

  def not_authenticated
    redirect_to login_url
    flash[:alert] = "Bitte erst einloggen. Sie werden auf die angeforderte Seite weitergeleitet."
  end

end
