class SessionsController < ApplicationController

  def create
    user = login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_back_or_to index_path, :notice => "Eingeloggt"
    else
      flash.now[:alert] = "E-Mail oder Passwort sind ungueltig"
      render :new
    end
  end
  
  def destroy
    logout
    redirect_to root_url, :notice => "Ausgeloggt"
  end

end
