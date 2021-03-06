# the describe block creates an example group, which defines what you are testing and keeps related specs together
# the it block is an example of the sandwich's use or a test case
# using the Arrange/Act/Assert pattern - set up an object, do something with it and check that it behaved the way we expected it

# Sandwich = Struct.new(:taste, :toppings)

#   describe 'An ideal sandwich' do 
#     it 'is delicious' do
#       sandwich = Sandwich.new('delicious', []) # create an object sandwich
#       taste = sandwich.taste # ask for it's taste

#       expect(taste).to eq('delicious') # verify that the result is delicious 
#     end

#     it "let's me add toppings" do
#       sandwich = Sandwich.new('delicious', [])   
#       sandwich.toppings << 'cheese' # adding toppings
#       toppings = sandwich.toppings #checking toppings

#       expect(toppings).not_to be_empty 
#     end 
#   end


#   # Same example using hooks to avoid repetitive set up
#   Sandwich = Struct.new(:taste, :toppings)

#   describe 'An ideal sandwich' do 
#     before { @sandwich = Sandwich.new('delicious', []) }
#     it 'is delicious' do

#       taste = @sandwich.taste 

#       expect(taste).to eq('delicious') 
#     end

#     it "let's me add toppings" do  
#       @sandwich.toppings << 'cheese'
#       toppings = @sandwich.toppings

#       expect(toppings).not_to be_empty 
#     end 
#   end


#   # Same example using helper methods to avoid repetitive set up
  
#   Sandwich = Struct.new(:taste, :toppings)

#   describe 'An ideal sandwich' do 
#     def sandwich
#       @sandwich ||= Sandwich.new('delicious', []) # adding memoization => we store the results of an operation and refer to the stored copy from then on(creating a sandwich)
#     end

#     it 'is delicious' do
#       taste = sandwich.taste

#       expect(taste).to eq('delicious') 
#     end

#     it "let's me add toppings" do 
#       sandwich.toppings << 'cheese'
#       toppings = sandwich.toppings

#       expect(toppings).not_to be_empty 
#     end 
#   end


  # # Same example using "let" to avoid repetitive set up =>let initializes data on demand
  # Sandwich = Struct.new(:taste, :toppings)

  # describe 'An ideal sandwich' do 
  #   let(:sandwich) { Sandwich.new('delicious', []) }
  #   it 'is delicious' do

  #     taste = sandwich.taste 

  #     expect(taste).to eq('delicious') 
  #   end

  #   it "let's me add toppings" do  
  #     sandwich.toppings << 'cheese'
  #     toppings = sandwich.toppings

  #     expect(toppings).not_to be_empty 
  #   end 
  # end
  