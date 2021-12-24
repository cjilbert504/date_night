# frozen_string_literal: true

require "test_helper"

class DateNightTest < Minitest::Test
  def setup
    @current_date = Date.today
    @current_datetime = DateTime.now
    @current_time = Time.now
  end

  def test_that_it_has_a_version_number
    refute_nil ::DateNight::VERSION
  end

  def test_mm_dd_yyyy
    assert_equal @current_date.mm_dd_yyyy, @current_date.strftime("%m %d %Y")
    assert_equal @current_datetime.mm_dd_yyyy, @current_datetime.strftime("%m %d %Y")
    assert_equal @current_time.mm_dd_yyyy, @current_time.strftime("%m %d %Y")
  end

  def test_slashed_date_format
    assert_equal @current_time.mm_dd_yyyy.slashed, @current_time.strftime("%m/%d/%Y")
  end

  def test_dashed_date_format
    assert_equal @current_time.mm_dd_yy.dashed, @current_time.strftime("%m-%e-%y")
  end

  def test_mm_dd_yy
    assert_equal @current_date.mm_dd_yy, @current_date.strftime("%m %e %y")
    assert_equal @current_datetime.mm_dd_yy, @current_datetime.strftime("%m %e %y")
    assert_equal @current_time.mm_dd_yy, @current_time.strftime("%m %e %y")
  end

  def test_full_month_yyyy
    assert_equal @current_date.full_month_yyyy, @current_date.strftime("%B %Y")
    assert_equal @current_datetime.full_month_yyyy, @current_datetime.strftime("%B %Y")
    assert_equal @current_time.full_month_yyyy, @current_time.strftime("%B %Y")
  end

  def test_short_month_yyyy
    assert_equal @current_date.short_month_yyyy, @current_date.strftime("%b %Y")
    assert_equal @current_datetime.short_month_yyyy, @current_datetime.strftime("%b %Y")
    assert_equal @current_time.short_month_yyyy, @current_time.strftime("%b %Y")
  end
end
