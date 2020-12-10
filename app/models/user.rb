class User < ActiveRecord::Base

  has_secure_password
   #this ActiveRecord method goes in the user model
  #orivudes a reader/writer method for password
  #provides a .authenticate method
  has_many :tweets

  def slug
    username.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    User.all.find{|user| user.slug == slug}
  end
end
  