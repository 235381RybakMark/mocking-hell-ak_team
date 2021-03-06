require 'person'
require 'email'

class Account
  attr_accessor :id, :person, :email

  def initialize(id, person, email)
    @id = id
    @person = person
    @email = email
  end

  def to_s
    account = "#{id}. #{person} - #{email}"
    account
  end
end
