class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :enabled

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
