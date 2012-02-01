class ChangeEnabledFromStringToBoolean < ActiveRecord::Migration
  def self.up
    change_column :users, :enabled, :boolean, :default => false 
  end

  def self.down
    change_column :users, :enabled, :string
  end
end
