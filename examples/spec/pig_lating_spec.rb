RSpec.describe "Expect that translate to Pig Latin" do
    def pig_it(word)
        (word.split(" ").map{|w|(revert = w[1..-1] +=w[0]).match(/[a-zA-Z]/) ? revert << "ay" : w[0] }).join(" ")
    end

    it 'Translate the word to pig latin' do
        piggie_word = pig_it('Pig latin is cool')
        expect(piggie_word).to eq('igPay atinlay siay oolcay')

        piggie_word = pig_it('Quis custodiet ipsos custodes ?')
        expect(piggie_word).to eq('uisQay ustodietcay psosiay ustodescay ?')
    end
end

=begin
# Primera Opcion
def pig_it(word)
    words = word.split(' ').map do |w|
         revert = w[1..-1] +=w[0]
         revert.match(/[a-zA-Z]/) ? revert << "ay" : w[0]
    end
    words.join(" ")
end

# Refactorizacion
def pig_it(word)
    (word.split(" ").map{|w| ( revert = w[1..-1] +=w[0]).match(/[a-zA-Z]/) ? revert << "ay" : w[0] }).join(" ")
end
=end
