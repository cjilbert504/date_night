# frozen_string_literal: true

require_relative "date_night/version"
require_relative "date_night/string_formatters"
require_relative "date_night/time_formatters"

# Module for friendly Time/Date/DateTime formatting
module DateNight
  class Error < StandardError; end
end

class String
  include DateNight::StringFormatters
end

class Time
  include DateNight::TimeFormatters
end
