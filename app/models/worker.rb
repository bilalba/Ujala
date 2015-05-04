class Worker < ActiveRecord::Base
  attr_accessible :age, :name, :num_of_ratings, :rating, :skills
end
