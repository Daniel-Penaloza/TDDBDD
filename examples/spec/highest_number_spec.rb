RSpec.describe "Expect to return the highest number" do
    def highest_rank(array)
        array_count = Hash.new(0)
        array.each {|number| array_count[number] += 1 }
        array_count.sort_by {|number, element| element}
    end

    it 'Return the most frequent number on a given array' do
        answer = highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12])
        expect(answer).to eq(12)
    end

    context 'with a tie' do
        it 'Return the largest number if there is a tie' do
            answer = highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10])
            expect(answer).to eq(12)
        end 
    end
end