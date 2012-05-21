# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#s@gmail.com, password: password

#2nd admin
#email: d@gmail.com, password = password

Permission.create!(:user => User.find_by_email("user@ticketee.com"),
                   :thing => Project.find_by_name("Ticketee Beta"),
                   :action => 'view')

user = User.create(:email => "user@ticketee.com",
                   :password => "password")
user.confirm!                  

admin_user = User.create(:email => "admin@ticketee.com",
                         :password => "password")
admin_user.admin = true
admin_user.confirm!

Project.create(:name => "Ticketee Beta")

State.create(:name       => "New",
             :background => "#85FF00",
             :color      => "white",
             :default    => true)

State.create(:name       => "Open",
             :background => "#00CFFD",
             :color      => "white")

State.create(:name       => "Closed",
             :background => "black",
             :color      => "white")
