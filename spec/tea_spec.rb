require 'tea'

RSpec.configure do |config|
  config.example_status_persistence_file_path = "spec/tea_examples.txt"
end

describe Tea do
  let(:tea) { Tea.new }

  it "tastes like Earl Grey" do
    expect(tea.flavour).to be :earl_grey
  end

  it "is hot" do
    expect(tea.temperature).to be > 100.0
  end
end