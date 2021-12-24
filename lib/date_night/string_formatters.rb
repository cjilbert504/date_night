# frozen_string_literal: true

module DateNight
  # Methods for formatting Time objects which have already been parsed with the TimeFormatters
  module StringFormatters
    def slashed
      gsub(" ", "/")
    end

    def dashed
      gsub(" ", "-")
    end
  end
end
