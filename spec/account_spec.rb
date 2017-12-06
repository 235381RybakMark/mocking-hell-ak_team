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

  describe '#id' do
    it 'returns a correct id' do
      expect(@account.id).to eq(:id)
    end

    it 'returns a correct id from @tadamczyk object' do
      expect(@tadamczyk.id).to eq(1)
    end
  end

  describe '#person' do
    it 'returns a correct person' do
      expect(@account.person).to eq(:person)
    end

    it 'returns a correct person from @tadamczyk object' do
      expect(@tadamczyk.person).to eq(@tadamczyk_person)
    end
  end

  describe '#email' do
    it 'returns a correct email' do
      expect(@account.email).to eq(:email)
    end

    it 'returns a correct email from @tadamczyk object' do
      expect(@tadamczyk.email).to eq(@tadamczyk_email)
    end
  end

  describe '#to_s' do
    it 'method #to_s work?' do
      expect { @account.to_s }.not_to raise_error
    end

    it 'returns correctly string output from @tadamczyk object' do
      expect(@tadamczyk.to_s).to eq('1. Tomasz Adamczyk - tadamczyk@sigma.ug.edu.pl')
    end
  end
end
