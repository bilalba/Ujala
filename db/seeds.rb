# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


workers = [{:name => 'Aladdin', :age => '12', :skills => 'Teacher, Driver'},
    	  {:name => 'The Terminator', :age => '34', :skills => 'Teacher, Driver'},
    	  {:name => 'When Harry Met Sally', :age => '32', :skills => 'Teacher, Driver'},
      	  {:name => 'The Help', :age => '13', :skills => 'Teacher, Driver'},
      	  {:name => 'Chocolat', :age => '16', :skills => 'Teacher, Driver'},
      	  {:name => 'Amelie', :age => '98', :skills => 'Teacher, Driver'},
      	  {:name => '2001: A Space Odyssey', :age => '65', :skills => 'Teacher, Driver'},
      	  {:name => 'The Incredibles', :age => '56', :skills => 'Teacher, Driver'},
      	  {:name => 'Raiders of the Lost Ark', :age => '73', :skills => 'Teacher, Driver'},
      	  {:name => 'Chicken Run', :age => '72', :skills => 'Teacher, Driver'},
  	 ]

workers.each do |worker|
  Worker.create!(worker)
end