# number_analyzer.rb
require 'sentimental'

class NumberAnalyzer
  attr_reader :input_string

  def initialize(input_string)
    @input_string = input_string
  end

  def analyze
    {
      letters_count: count_letters,
      spaces_count: count_spaces,
      digits_count: count_digits,
      symbols_count: count_symbols,
      total_characters: input_string.length,
      word_frequencies: word_frequencies,
      sentiment: analyze_sentiment
    }
  end

  private

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
    input_string.scan(/\W/).size
  end

  def word_frequencies
    words = input_string.downcase.split(/\W+/)
    words.reject!(&:empty?)
    words.group_by(&:itself).transform_values(&:count)
  end

  def analyze_sentiment
    analyzer = Sentimental.new
    analyzer.load_defaults
    analyzer.sentiment(input_string)
  end
end

class CLI
  def initialize
    puts "Welcome to the Number Analyzer CLI!"
  end

  def run
    loop do
      print_menu
      option = gets.chomp.downcase
      case option
      when '1'
        analyze_input
      when '2'
        search_word
      when '3'
        export_results
      when '4'
        exit_program
      else
        puts "Invalid option. Please select again."
      end
    end
  end

  private

  def print_menu
    puts "\nMenu:"
    puts "1. Analyze input string"
    puts "2. Search for a word"
    puts "3. Export analysis results"
    puts "4. Exit"
    print "Select an option: "
  end

  def analyze_input
    print "Enter a string to analyze: "
    input_string = gets.chomp
    analyzer = NumberAnalyzer.new(input_string)
    analysis_results = analyzer.analyze
    display_results(analysis_results)
  end

  def display_results(results)
    puts "\nAnalysis for the input string:"
    puts "Number of letters: #{results[:letters_count]}"
    puts "Number of spaces: #{results[:spaces_count]}"
    puts "Number of digits: #{results[:digits_count]}"
    puts "Number of symbols: #{results[:symbols_count]}"
    puts "Total characters: #{results[:total_characters]}"
    puts "Word frequencies: #{results[:word_frequencies]}"
    puts "Sentiment: #{results[:sentiment]}"
  end

  def search_word
    print "Enter a word to search for: "
    search_word = gets.chomp.downcase
    word_count = input_string.downcase.scan(/\b#{search_word}\b/).size
    puts "The word '#{search_word}' appears #{word_count} times in the input string."
  end

  def export_results
    # Implement export functionality here
    puts "Exporting analysis results..."
  end

  def exit_program
    puts "Exiting program. Goodbye!"
    exit
  end
end

# Run the CLI application
CLI.new.run if $PROGRAM_NAME == __FILE__
