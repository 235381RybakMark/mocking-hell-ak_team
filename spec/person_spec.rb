require 'spec_helper'

RSpec.describe 'person.rb' do
  before :each do
    @person = Person.new :firstname, :lastname, :id
    @tomasz = Person.new('Tomasz', 'Adamczyk', '94010112345')
  end

  describe '#new' do
    it 'method #new work?' do
      expect { @person }.not_to raise_error
    end

    it 'returns a person type from @tomasz object' do
      expect(@tomasz).to be_an_instance_of(Person)
    end
  end

  describe '#firstname' do
    it 'returns a correct firstname' do
      expect(@person.firstname).to eq(:firstname)
    end

    it 'returns a correct firstname from @tomasz object' do
      expect(@tomasz.firstname).to eq('Tomasz')
    end
  end

  describe '#lastname' do
    it 'returns a correct lastname' do
      expect(@person.lastname).to eq(:lastname)
    end

    it 'returns a correct lastname from @tomasz object' do
      expect(@tomasz.lastname).to eq('Adamczyk')
    end
  end

  describe '#id' do
    it 'returns a correct id' do
      expect(@person.id).to eq(:id)
    end

    it 'returns a correct id from @tomasz object' do
      expect(@tomasz.id).to eq('94010112345')
    end
  end

  describe '#to_s' do
    it 'method #to_s work?' do
      expect { @person.to_s }.not_to raise_error
    end

    it 'returns correctly string output from @tomasz object' do
      expect(@tomasz.to_s).to eq('Tomasz Adamczyk')
    end
  end
end
