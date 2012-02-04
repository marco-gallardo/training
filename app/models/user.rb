class User < ActiveRecord::Base
  scope :enabled_users, where(:enabled => true)

  def self.search(value)
    where('first_name LIKE ? OR last_name LIKE ? OR email LIKE ? OR address LIKE ?', value, value, value, value)
  end

end
