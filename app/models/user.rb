class User < ActiveRecord::Base
  has_many :movies, :through => :rents
  has_many :rents

  scope :enabled_users, where(:enabled => true)

  def self.search(value)
    if value
      find(:all, :conditions => ['first_name LIKE ? OR last_name LIKE ? OR email LIKE ? OR address LIKE ?', "%#{value}%", "%#{value}%", "%#{value}%", "%#{value}%"])
    else
      find(:all)
    end
  end

end
