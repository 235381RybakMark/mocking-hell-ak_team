require 'spec_helper'

describe '#email?' do
  it 'returns truth as a result of email address validation' do
    email = EmailAddress.new('tadamczyk@sigma.ug.edu.pl')
    expect(email.valid?).to eq true
  end

  it 'returns false as a result of email address validation' do
    email = EmailAddress.new('tadamczyk')
    expect(email.valid?).to eq false
  end
end
