RSpec.describe "Sumarizing An Array" do
    def valid_array(array)
        array.all? {|element| element.is_a?(Integer)}
    end

    def sumarize_array(array)
        array.inject(0) {|actual_number, element| actual_number + element}
    end

    it "Avoid arrays that don't have just numbers" do
        array = ['ASDF', 1, 2 , 5]
        
        valid = valid_array(array)
        expect(valid).to_not be_truthy
    end

    it "Accept arrays that have just numbers" do
        array = [1,3,4,6]
        
        valid = valid_array(array)
        expect(valid).to be_truthy
    end

    it "Can sumarize all the elements in the array" do
        array = [1,3,4,6]

        sumarize = sumarize_array(array)
        expect(sumarize).to eq(14)
    end
end