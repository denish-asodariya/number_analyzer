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
      total_characters: input_string.length
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
    puts "2. Exit"
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
  end

  def exit_program
    puts "Exiting program. Goodbye!"
    exit
  end
end

# Run the CLI application
CLI.new.run if $PROGRAM_NAME == __FILE__
