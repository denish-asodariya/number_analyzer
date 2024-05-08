require 'minitest/autorun'
require_relative '../lib/number_analyzer'

class NumberAnalyzerTest < Minitest::Test
  def setup
    @analyzer = NumberAnalyzer.new("here 12 plus 25")
  end

  def test_count_letters
    assert_equal 8, @analyzer.count_letters
  end

  def test_count_spaces
    assert_equal 3, @analyzer.count_spaces
  end

  def test_count_digits
    assert_equal 4, @analyzer.count_digits
  end
end
