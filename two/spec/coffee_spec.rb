class Coffee
    def ingredients
        @ingredients ||= []
    end

    def add(ingredient)
        ingredients << ingredient
    end

    def total_ingredients
        ingredients.size * 0.25
    end

    def price
        1.00 + total_ingredients
    end
end

RSpec.describe "A cup of coffee" do
    let(:coffee) { Coffee.new }

    it 'costs $1' do
        expect(coffee.price).to eq(1.00)
    end

    context 'with milk' do
        before { coffee.add :milk }

        it 'costs 1.25' do
            expect(coffee.price).to eq(1.25)
        end
    end
end