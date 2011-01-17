class Founder < ActiveRecord::Base
  validates :username, :about, :email, :presence => true
  
  validates :username, :uniqueness => {:message => "This username is already taken"}
  validates :email, :uniqueness => {:message => "This email is already taken"}
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                      :message => "Please enter a valid email address"                   
end