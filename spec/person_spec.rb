require 'spec_helper'

RSpec.describe 'person.rb' do
  before :each do
    @person = Person.new :firstname, :lastname, :id
  end

  describe '#new' do
    it 'method #new work?' do
      expect { @person }.not_to raise_error
    end
  end

  describe '#firstname' do
    it 'returns a correct firstname' do
      expect(@person.firstname).to eq(:firstname)
    end
  end

  describe '#lastname' do
    it 'returns a correct lastname' do
      expect(@person.lastname).to eq(:lastname)
    end
  end

  describe '#id' do
    it 'returns a correct id' do
      expect(@person.id).to eq(:id)
    end
  end

  describe '#to_s' do
    it 'method #to_s work?' do
      expect { @person.to_s }.not_to raise_error
    end
  end
end
