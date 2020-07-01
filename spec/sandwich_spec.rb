# the describe block creates an example group, which defines what you are testing and keeps related specs together
# the it block is an example of the sandwich's use or a test case
# using the Arrange/Act/Assert pattern - set up an object, do something with it and check that it behaved the way we expected it

# Sandwich = Struct.new(:taste, :toppings)

require 'sandwich'

describe Sandwich do
  describe 'An ideal sandwich' do 
    it 'is delicious' do
      sandwich = Sandwich.new('delicious', []) # create an object sandwich
      taste = sandwich.taste # ask for it's taste

      expect(taste).to eq('delicious') # verify that the result is delicious 
    end
  end
end
