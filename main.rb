require_relative 'lib/number_analyzer'

def print_welcome_message
  puts "Welcome to Number Analyzer CLI!"
end

def get_user_input
  print "Please enter a string to analyze: "
  gets.chomp
end

def analyze_input(input)
  analyzer = NumberAnalyzer.new(input)
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

def main
  print_welcome_message
  input = get_user_input
  analyze_input(input)
end

main if __FILE__ == $PROGRAM_NAME
