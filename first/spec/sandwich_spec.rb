RSpec.describe 'An ideal sandwich' do
  it 'is deilicious' do
    # In this way we are supporting keyword arguments.
    sandwich = Sandwich.new(taste: 'delicious', toppings: ['beef', 'lettuce', 'tommatoes', 'spinach'])
    
    taste = sandwich.taste
    expect(taste).to eq('delicious')
  end
end

# Sandwich = Struct.new(:taste, :toppings)
# Refactoring the Struct to a best approach and avoiding mistakes in the futures
Sandwich = Struct.new(:taste, :toppings, keyword_init: true)