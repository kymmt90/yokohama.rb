require 'date'
require 'test/unit'

def fiscal_year(date, gap = 3)
  (date << gap).year
end

def school_year(date)
  fiscal_year(date)
end

def rice_year(date)
  fiscal_year(date, -2)
end

class YearTest < Test::Unit::TestCase
  def test_fiscal_year
    assert_equal 2010, fiscal_year(Date.new(2010, 4, 1))
  end

  def test_fiscal_year_last_day
    assert_equal 2009, fiscal_year(Date.new(2010, 3, 31))
  end

  def test_school_year_first_day
    assert_equal 2010, school_year(Date.new(2010, 4, 1))
  end

  def test_school_year
    assert_equal 2009, school_year(Date.new(2010, 3, 31))
  end

  def test_rice_year_first_day
    assert_equal 2011, rice_year(Date.new(2010, 11, 1))
  end

  def test_rice_year_last_day
    assert_equal 2010, rice_year(Date.new(2010, 10, 30))
  end
end
