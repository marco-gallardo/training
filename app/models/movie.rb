class Movie < ActiveRecord::Base
  has_many :users, :through => :rents
  has_many :rents
end
