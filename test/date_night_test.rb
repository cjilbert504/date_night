# frozen_string_literal: true

require "test_helper"

class DateNightTest < Minitest::Test
  def setup
    @current_date = Date.today
    @current_datetime = DateTime.now
    @current_time = Time.now
  end

  def test_that_it_has_a_version_number
    refute_nil DateNight::VERSION
  end

  def test_mm_dd_yyyy
    assert_equal @current_date.strftime("%m %d %Y"), @current_date.mm_dd_yyyy
    assert_equal @current_datetime.strftime("%m %d %Y"), @current_datetime.mm_dd_yyyy
    assert_equal @current_time.strftime("%m %d %Y"), @current_time.mm_dd_yyyy
  end

  def test_slashed_date_format
    assert_equal @current_time.strftime("%m/%d/%Y"), @current_time.mm_dd_yyyy.slashed
  end

  def test_dashed_date_format
    assert_equal @current_time.strftime("%m-%d-%y"), @current_time.mm_dd_yy.dashed
  end

  def test_mm_dd_yy
    assert_equal @current_date.strftime("%m %d %y"), @current_date.mm_dd_yy
    assert_equal @current_datetime.strftime("%m %d %y"), @current_datetime.mm_dd_yy
    assert_equal @current_time.strftime("%m %d %y"), @current_time.mm_dd_yy
  end

  def test_full_month_yyyy
    assert_equal @current_date.strftime("%B %Y"), @current_date.full_month_yyyy
    assert_equal @current_datetime.strftime("%B %Y"), @current_datetime.full_month_yyyy
    assert_equal @current_time.strftime("%B %Y"), @current_time.full_month_yyyy
  end

  def test_short_month_yyyy
    assert_equal @current_date.strftime("%b %Y"), @current_date.short_month_yyyy
    assert_equal @current_datetime.strftime("%b %Y"), @current_datetime.short_month_yyyy
    assert_equal @current_time.strftime("%b %Y"), @current_time.short_month_yyyy
  end
end
