# Number Analyzer

Welcome to the Number Analyzer CLI! This command-line application analyzes a given input string and provides various statistics about its content.

## Features

- Counts the total number of letters in the input string.
- Counts the total number of spaces in the input string.
- Counts the total number of digits in the input string.
- Counts the total number of symbols (non-alphanumeric characters) in the input string.
- Displays the total number of characters in the input string.

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/denish-asodariya/number-analyzer-cli.git
   ```

2. Navigate to the project directory:

   ```bash
   cd number-analyzer
   ```

3. Run the CLI application:

   ```bash
   ruby main.rb
   ```

4. Enter a string when prompted and press Enter to analyze it.

5. View the analysis results displayed in the terminal.

## Example

Suppose you enter the string "Hello, 123! How are you?".

The output will be:

```
Analysis for the input string:
Number of letters: 16
Number of spaces: 5
Number of digits: 3
Number of symbols: 2
Total characters: 26
```

## Tests

This project includes unit tests to ensure the correctness of the `NumberAnalyzer` class. To run the tests, execute the following command:

```bash
ruby tests/number_analyzer_test.rb
```

## Contributing

Contributions are welcome! If you have any ideas for improvements or new features, feel free to submit a pull request.
