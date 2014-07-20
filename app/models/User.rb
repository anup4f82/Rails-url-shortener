require 'bcrypt'
class User < ActiveRecord::Base
 include BCrypt
  has_many :urls

  
   def password
   	 puts "read"
      @password ||= Password.new(password_hash)
    end

  def password=(new_password)
  	puts "create"
  	puts new_password
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end