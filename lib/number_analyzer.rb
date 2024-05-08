class NumberAnalyzer
    attr_reader :input_string
  
    def initialize(input_string)
      @input_string = input_string
    end
  
    def count_letters
      input_string.scan(/[a-zA-Z]/).size
    end
  
    def count_spaces
      input_string.scan(/\s/).size
    end
  
    def count_digits
      input_string.scan(/\d/).size
    end
  
    def count_symbols
      input_string.scan(/[^a-zA-Z0-9\s]/).size
    end
  
    def analyze
      puts "Analysis for the input string:"
      puts "Number of letters: #{count_letters}"
      puts "Number of spaces: #{count_spaces}"
      puts "Number of digits: #{count_digits}"
      puts "Number of symbols: #{count_symbols}"
      puts "Total characters: #{input_string.size}"
    end
  end
  
