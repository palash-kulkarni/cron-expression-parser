require_relative './component_parser'
require_relative '../common/constants'

module Factories
  # HourParser is specialized class which parse Hour component and display result
  class HourParser < ComponentParser
    include Common::Constants

    def initialize(raw_value)
      super(raw_value, MIN_OF_HOURS, MAX_OF_HOURS)
    end

    def display
      str = 'hour'.ljust(14)
      str += @parsed_values.join(' ')
      str
    end
  end
end
