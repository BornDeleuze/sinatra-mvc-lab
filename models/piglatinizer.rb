   class PigLatinizer

    def piglatinize(phrase)
        translated_phrase = phrase.split.collect do |word|
            translate_word(word)
        end
        translated_phrase.join(', ').delete(",")
    end

    def translate_word(word)
        if word.start_with?('a','e','i','o','u','A','E','I','O','U')
            word << 'way'
          else 
            parts = word.split(/([aeiou].*)/)
            new_word= parts[1]<<parts[0]<<"ay"
          end
    end
end