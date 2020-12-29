class Student
    def initialize(name, qualifications)
        @name = name
        @qualifications = qualifications
    end

    def average
        calculate_average
    end

    def calculate_average
        @qualifications.inject(0) {|sum_qa, current_number| sum_qa + current_number} / @qualifications.size.to_f
    end

    def message
        "#{@name} your average qualification is #{average}"
    end
end


RSpec.describe "The exact average of qualification" do
    before { @student = Student.new('Ileana Durazo', [90, 85, 80, 100, 89]) }

    it "calculates the correct avegare" do
        average = @student.average
        expect(average).to eq(88.8)
    end

    it "display in a good way the message" do
        expect(@student.message).to eq("Ileana Durazo your average qualification is 88.8")
    end
end