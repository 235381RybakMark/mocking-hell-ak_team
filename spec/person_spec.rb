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
end
