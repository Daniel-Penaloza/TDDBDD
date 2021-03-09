class Tea
  def flavor
    :earl_gray
  end

  def temperature
    flavor == :earl_gray ? 250.0 : 100.0
  end
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = 'spec/tea_examples.txt'
end

RSpec.describe Tea do
  let(:tea) { Tea.new }

  it 'tastes like Earl Gray' do
    expect(tea.flavor).to be :earl_gray
  end

  it 'is hot' do
    expect(tea.temperature).to be > 200.00
  end
end