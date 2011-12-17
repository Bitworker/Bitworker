class HomeController < ApplicationController
  
  before_filter :require_login, :only => :index

  def welcome
  end

  def index
  end

end
