class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.integer :age
      t.string :skills
      t.integer :rating
      t.integer :num_of_ratings

      t.timestamps
    end
  end
end
