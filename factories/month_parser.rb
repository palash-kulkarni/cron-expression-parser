require_relative './component_parser'
require_relative '../common/constants'

module Factories
  # MonthParser is specialized class which parse Month component and display result
  class MonthParser < ComponentParser
    include Common::Constants

    def initialize(raw_value)
      super(raw_value, MIN_OF_MONTHS, MAX_OF_MONTHS)
    end

    def display
      str = 'month'.ljust(14)
      str += @parsed_values.join(' ')
      str
    end
  end
end
