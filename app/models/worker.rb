class Worker < ActiveRecord::Base
  attr_accessible :age, :name, :num_of_ratings, :rating, :skills
  def self.all_skills
    %w(Teacher Driver Cook Dancer Painter)
  end
end
