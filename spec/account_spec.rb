require 'spec_helper'

RSpec.describe 'account.rb' do
  before :each do
    RSpec::Mocks.with_temporary_scope do
      @account = Account.new :id, :person, :email
      @tadamczyk_person = Person.new('Tomasz', 'Adamczyk', '94010112345')
      @tadamczyk_email = Email.new('tadamczyk@sigma.ug.edu.pl')
      @tadamczyk = Account.new(1, @tadamczyk_person, @tadamczyk_email)
    end
  end

  describe '#new' do
    it 'method #new work?' do
      expect { @account }.not_to raise_error
    end

    it 'returns an account type from @tadamczyk object' do
      expect(@account).to be_an_instance_of(Account)
    end
  end

  describe '#id' do
    it 'returns a correct account id' do
      expect(@account.id).to eq(:id)
    end

    it 'returns a correct account id from @tadamczyk object' do
      expect(@tadamczyk.id).to eq(1)
    end
  end

  describe '#person' do
    it 'returns a correct account person' do
      expect(@account.person).to eq(:person)
    end

    it 'returns a correct account person from @tadamczyk object' do
      expect(@tadamczyk.person).to eq(@tadamczyk_person)
    end
  end

  describe '#email' do
    it 'returns a correct account email' do
      expect(@account.email).to eq(:email)
    end

    it 'returns a correct account email from @tadamczyk object' do
      expect(@tadamczyk.email).to eq(@tadamczyk_email)
    end
  end

  describe '#to_s' do
    it 'method #to_s work?' do
      expect { @account.to_s }.not_to raise_error
    end

    it 'returns correctly account string output from @tadamczyk object' do
      expect(@tadamczyk.to_s).to eq('1. Tomasz Adamczyk - tadamczyk@sigma.ug.edu.pl')
    end
  end
end
