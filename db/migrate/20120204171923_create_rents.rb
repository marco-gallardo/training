class CreateRents < ActiveRecord::Migration
  def self.up
    create_table :rents do |t|
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
  end

  def self.down
    drop_table :rents
  end
end
