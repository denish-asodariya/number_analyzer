require_relative 'lib/number_analyzer'

def print_welcome_message
  puts "Welcome to Number Analyzer CLI!"
  puts "Please enter a string to analyze:"
end

def get_user_input
  print "> "
  gets.chomp
end

def analyze_input(input)
  analyzer = NumberAnalyzer.new(input)
  analyzer.analyze
end

def main
  print_welcome_message
  input = get_user_input
  analyze_input(input)
end

main if __FILE__ == $PROGRAM_NAME
