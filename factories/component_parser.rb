module Factories
  # ComponentParser parent class which has ability to parse each component's value
  class ComponentParser
    attr_reader :min, :max
    attr_accessor :raw_value, :parsed_values

    def initialize(raw_value, min, max)
      @raw_value = raw_value
      @min = min
      @max = max
      @parsed_values = []
    end

    def parse
      if @raw_value.eql?('*')
        @parsed_values = (@min..@max).to_a
      elsif @raw_value.include?('/')
        step = @raw_value.split('/').last.to_i
        @parsed_values = (@min..@max).step(step).to_a
      elsif @raw_value.include?('-')
        range_start, range_end = @raw_value.split('-').map(&:to_i)
        @parsed_values = (range_start..range_end).to_a
      elsif @raw_value.include?(',')
        @parsed_values = @raw_value.split(',').map(&:to_i)
      else
        @parsed_values = [@raw_value.to_i]
      end
    end
  end
end
