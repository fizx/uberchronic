require "test/unit"
require File.dirname(__FILE__) + "/../lib/uberchronic"

class UberchronicTest < Test::Unit::TestCase
  def test_parsing
    assert_same_day Time.parse("Dec 15 1999"), Uberchronic.parse("december 15 1999")
  end
  
  def test_junk
    assert_nil Uberchronic.parse("junk")
  end
  
  def assert_same_day(a, b)
    assert (a - b).abs < 60 * 60 * 24
  end
end