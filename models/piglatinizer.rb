class PigLatinizer 

    attr_accessor :text

    def piglatinize(input_str)
        if input_str.split(" ").length == 1
            transform_word(input_str)
        else
            input_str.split(" ").collect {|word| transform_word(word)}.join(" ")
        end
    end

    def transform_word(word) #Got stuck on this one, had to peek!
        if !consonant?(word[0])
            word = word + "w"
          elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
            word = word.slice(3..-1) + word.slice(0,3)
          elsif consonant?(word[0]) && consonant?(word[1])
            word = word.slice(2..-1) + word.slice(0,2)
          else
            word = word.slice(1..-1) + word.slice(0)
          end
          word << "ay"
    end

    def consonant?(char)
        !char.match(/[aAeEiIoOuU]/)
    end 

end
