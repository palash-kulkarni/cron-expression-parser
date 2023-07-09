require_relative './component_parser'
require_relative '../common/constants'

module Factories
  # MinuteParser is specialized class which parse Minute component and display result
  class MinuteParser < ComponentParser
    include Common::Constants

    def initialize(raw_value)
      super(raw_value, MIN_OF_MINUTES, MAX_OF_MINUTES)
    end

    def display
      str = 'minute'.ljust(14)
      str += @parsed_values.join(' ')
      str
    end
  end
end
