RSpec.describe 'An ideal sandwich' do
  it 'is deilicious' do
    sandwich = Sandwich.new('delicious', [])
    
    taste = sandwich.taste
    expect(taste).to eq('delicious')
  end
end
Sandwich = Struct.new(:taste, :toppings)