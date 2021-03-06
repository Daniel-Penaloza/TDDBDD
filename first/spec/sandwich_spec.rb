RSpec.describe 'An ideal sandwich' do
  # Creating a before hook to initialize an object
  before { @sandwich = Sandwich.new(taste: 'delicious', toppings: [])}
  it 'is deilicious' do
    taste = @sandwich.taste
    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    toppings = @sandwich.toppings << 'cheese'

    expect(toppings).not_to be_empty
  end
end

# Sandwich = Struct.new(:taste, :toppings)
# Refactoring the Struct to a best approach and avoiding mistakes in the futures
# Adding the way to supporting keyword arguments when we create an instance of the Sandwich Struct Class.
Sandwich = Struct.new(:taste, :toppings, keyword_init: true)