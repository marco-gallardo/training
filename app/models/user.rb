class User < ActiveRecord::Base
  has_many :movies, :through => :rents
  has_many :rents

  scope :enabled_users, where(:enabled => true)

  def self.search(value)
    where('first_name LIKE ? OR last_name LIKE ? OR email LIKE ? OR address LIKE ?', value, value, value, value)
  end

end
