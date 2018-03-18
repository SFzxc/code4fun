require 'minitest/autorun'
require './longest_sub'
require 'pry'

class TestLongestSub < Minitest::Test

  def setup
    @sub = LongestSub.new
  end

  def test_longest_common_sub
    assert_equal "3333", @sub.common_check("11122333344")
    assert_equal "1", @sub.common_check("1")
    assert_equal "ddd", @sub.common_check("abcbcdddccaa")
  end

  def test_longest_number_increas_sub
    assert_equal "3457", @sub.increase_number_check("34574563")
    assert_equal "2467", @sub.increase_number_check("232467")
    assert_equal "4", @sub.increase_number_check("44444")
  end

end

