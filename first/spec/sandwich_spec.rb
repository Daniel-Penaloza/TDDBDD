RSpec.describe 'An ideal sandwich' do
  # Changing the sandwich helper method to a let statement
  let(:sandwich) {Sandwich.new(taste: 'delicious', toppings: [])}

  it 'is deilicious' do
    taste = sandwich.taste
    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
  end
end

# Sandwich = Struct.new(:taste, :toppings)
# Refactoring the Struct to a best approach and avoiding mistakes in the futures
# Adding the way to supporting keyword arguments when we create an instance of the Sandwich Struct Class.
Sandwich = Struct.new(:taste, :toppings, keyword_init: true)