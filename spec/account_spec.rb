require 'spec_helper'

RSpec.describe 'account.rb' do
  before :each do
    @account = Account.new :id, :person, :email
    @tadamczyk_person = Person.new('Tomasz', 'Adamczyk', '94010112345')
    @tadamczyk_email = EmailAddress.new('tadamczyk@sigma.ug.edu.pl')
    @tadamczyk = Account.new(1, @tadamczyk_person, @tadamczyk_email)
  end

  describe '#new' do
    it 'method #new work?' do
      expect { @account }.not_to raise_error
    end

    it 'returns a person type from @tomasz object' do
      expect(@account).to be_an_instance_of(Account)
    end
  end
end
