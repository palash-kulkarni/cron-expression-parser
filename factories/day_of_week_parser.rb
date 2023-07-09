require_relative './component_parser'
require_relative '../common/constants'

module Factories
  # DayOfWeekParser is specialized class which parse DayOfWeek component and display result
  class DayOfWeekParser < ComponentParser
    include Common::Constants

    def initialize(raw_value)
      super(raw_value, MIN_OF_DAY_OF_WEEK, MAX_OF_DAY_OF_WEEK)
    end

    def display
      str = 'day of week'.ljust(14)
      str += @parsed_values.join(' ')
      str
    end
  end
end
