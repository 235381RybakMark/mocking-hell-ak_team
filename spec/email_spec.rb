require 'spec_helper'

RSpec.describe 'email.rb' do
  before :each do
    @email = Email.new('tadamczyk@sigma.ug.edu.pl')
    @fake_email = EmailAddress.new('tadamczyk')
  end

  describe '#email?' do
    it 'method #new work?' do
      expect { @email }.not_to raise_error
    end

    it 'returns an email type from @email object' do
      expect(@email).to be_an_instance_of(Email)
    end

    it 'returns truth as a result of email address validation' do
      expect(@email.valid?).to eq true
    end

    it 'returns false as a result of email address validation' do
      expect(@fake_email.valid?).to eq false
    end
  end
end
