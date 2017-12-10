require 'spec_helper'

RSpec.describe 'email.rb' do
  before :each do
    RSpec::Mocks.with_temporary_scope do
      dbl_email = double(email: Email.new('tadamczyk@sigma.ug.edu.pl'))
      @email = dbl_email.email
    end
  end

  describe '#email?' do
    it 'method #new work?' do
      expect { @email }.not_to raise_error
    end

    it 'returns an email type from @email object' do
      expect(@email).to be_an_instance_of(Email)
    end
  end

  describe '#email.valid?' do
    it 'returns truth as a result of email address validation' do
      expect(@email.valid?).to eq true
    end

    it 'returns false as a result of email address validation' do
      dbl_fake_email = double(fake_email: Email.new('tadamczyk'))
      @fake_email = dbl_fake_email.fake_email
      expect(@fake_email.valid?).to eq false
    end
  end
end
