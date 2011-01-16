# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Seed Founders with test, Brian

Founder.delete_all

Founder.create(:username => 'A Founder', :email => "b.jordan@tufts.edu", 
               :about => "Novice rails programmer",
               :looking_for => "Other programmers, designers interested
               in building something useful and cool.")