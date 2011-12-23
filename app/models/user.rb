class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  attr_accessible :email, :password, :password_confirmation

  MAILREGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/

  validates_confirmation_of :password, :message => "Passwoerter stimmen nicht ueberein." 
  validates_presence_of :email, :message => "Bitte fuellen Sie dieses Feld aus." 
  validates_presence_of :password, :message => "Bitte fuellen Sie dieses Feld aus."
  validates_presence_of :password_confirmation, :message => "Bitte fuellen Sie dieses Feld aus."
  validates_uniqueness_of :email, :message => "Login Name bereits vorhanden." 
  
  validates_format_of :email, :with => MAILREGEX 
  
end
