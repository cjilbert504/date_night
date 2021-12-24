# frozen_string_literal: true

require "test_helper"

class DateNightTest < Minitest::Test
  def setup
    @current_time = Time.now
  end

  def test_that_it_has_a_version_number
    refute_nil ::DateNight::VERSION
  end

  def test_mm_dd_yyyy
    assert_equal @current_time.mm_dd_yyyy, @current_time.strftime("%m %d %Y")
  end

  def test_slashed_date_format
    assert_equal @current_time.mm_dd_yyyy.slashed, @current_time.strftime("%m/%d/%Y")
    assert_equal @current_time.mm_dd_yy.slashed, @current_time.strftime("%m/%e/%y")
  end

  def test_dashed_date_format
    assert_equal @current_time.mm_dd_yyyy.dashed, @current_time.strftime("%m-%d-%Y")
    assert_equal @current_time.mm_dd_yy.dashed, @current_time.strftime("%m-%e-%y")
  end

  def test_mm_dd_yy
    assert_equal @current_time.mm_dd_yy, @current_time.strftime("%m %e %y")
  end
end
