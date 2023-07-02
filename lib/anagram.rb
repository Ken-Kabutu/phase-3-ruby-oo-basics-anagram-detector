class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word.downcase
    end

    def match(words)
        words.select { |w| anagram?(w.downcase) }
    end

    def anagram?(other_word)
        return false if other_word == word || other_word.length != word.length

        word.chars.sort == other_word.chars.sort
    end
end






