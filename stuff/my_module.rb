require 'digest'

module Encryption
  def encrypt(string)
    Digest::SHA2.hexdigest(string)
  end
end

class Person
  include Encryption
  attr_accessor :password
  
  def encrypted_password
    encrypt(password)
  end
end

person = Person.new
person.password = "d4n"
puts person.encrypted_password