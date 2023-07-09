require_relative './component_parser'
require_relative '../common/constants'

module Factories
  # DayOfMonthParser is specialized class which parse DayOfMonth component and display result
  class DayOfMonthParser < ComponentParser
    include Common::Constants

    def initialize(raw_value)
      super(raw_value, MIN_OF_DAY_OF_MONTH, MAX_OF_DAY_OF_MONTH)
    end

    def display
      str = 'day of month'.ljust(14)
      str += @parsed_values.join(' ')
      str
    end
  end
end
