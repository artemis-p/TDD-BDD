require 'coffee'

describe "A cup of coffee" do
  RSpec.configure do |config|
    config.filter_run_when_matching(focus: true)
    config.example_status_persistence_file_path = 'spec/examples.txt' 
  end

  let(:coffee) { Coffee.new }

  it "costs £1" do
    expect(coffee.price).to eq(1.00)
  end

  context "with milk" do # if you add f before context means that it's focused context. configure rspec to run only the focused examples by adding line 5 and run rspec. It will run the focused example
    before { coffee.add :milk }

    it "is light in colour" do # pending spec
      pending "Colour not implemented yet" 
      expect(coffee.colour).to be(:light)
    end

    it "is cooler than 10 degrees Celsius" do # pending spec
      pending "Temperature not implemented yet"
      expect(coffee.temperature).to be < 10.0
    end

    it "costs £1.25" do
      expect(coffee.price).to eq(1.25)
    end
  end
end

# using rspec -fd => to see the documentation formatter. 
# using gem install coderay -v 1.1.1 =>the ruby snippets in the spec's output will be color-coded just like they'd be in the text editor
# rspec -e milk -fd =>runs a specific example by name
# rspec ./spec/coffee_spec.rb:13 => runs the latest error
# rspec --only-failures => needs configuration file to store all the information about which examples are failing - add lines 4+6 and then run rspec with no flags



