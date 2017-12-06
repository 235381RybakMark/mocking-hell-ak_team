require 'email_address'

class Email
  attr_accessor :email_address

  def initialize(email_address)
    @email_address = EmailAddress.new(email_address)
  end
end
