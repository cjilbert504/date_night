# frozen_string_literal: true

module DateNight
  # Methods for parsing and formatting Time objects
  module TimeFormatters
    def mm_dd_yyyy
      strftime("%m %d %Y")
    end

    def mm_dd_yy
      strftime("%m %e %y")
    end
  end
end
