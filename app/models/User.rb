
class User < ActiveRecord::Base
  has_many :urls
  attr_accessible :username,:password_hash
  
   def password
      @password ||= Password.new(password_hash)
    end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end