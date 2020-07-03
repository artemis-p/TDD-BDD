require 'coffee'

describe "A cup of coffee" do
  RSpec.configure do |config|
    config.example_status_persistence_file_path = 'spec/examples.txt' 
  end

  let(:coffee) { Coffee.new }

  it "costs £1" do
    expect(coffee.price).to eq(1.00)
  end

  context "with milk" do
    before { coffee.add :milk }

    it "costs £1.25" do
      expect(coffee.price).to eq(1.25)
    end
  end
end

# using rspec -fd => to see the documentation formatter. 
# using gem install coderay -v 1.1.1 =>the ruby snippets in the spec's output will be color-coded just like they'd be in the text editor
# rspec -e milk -fd =>runs a specific example by name
# rspec ./spec/coffee_spec.rb:13 => runs the latest error
# rspec --only-failures => needs configuration file to store all the information about which examples are failing - add lines 4-5 and then run rspec with no flags



