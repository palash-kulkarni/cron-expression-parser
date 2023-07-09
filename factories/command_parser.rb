require_relative './component_parser'
require_relative '../common/constants'

module Factories
  # CommandParser is specialized class which parse Command component and display result
  class CommandParser < ComponentParser
    include Common::Constants

    def initialize(raw_value)
      super(raw_value, nil, nil)
    end

    def parse
      return if @raw_value.nil?

      @parsed_values = [@raw_value]
    end

    def display
      str = 'command'.ljust(14)
      str += @parsed_values.join(' ')
      str
    end
  end
end
