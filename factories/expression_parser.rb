require_relative '../common/enums'
require_relative './minute_parser'
require_relative './hour_parser'
require_relative './month_parser'
require_relative './day_of_week_parser'
require_relative './day_of_month_parser'
require_relative './command_parser'

module Factories
  # ExpressionParser invoke parsers for all componenets with their sequence or order and also derives parser dynamically
  class ExpressionParser
    attr_accessor :fields, :component_parsers

    include Common::Enums

    def initialize(fields)
      @fields = fields
      @component_parsers = []
    end

    def invoke_parser
      @fields.each_with_index do |field_value, index|
        field_name = FIELDS_SEQUENCE[index]
        klass = derive_parser(field_name)
        parser_obj = klass.new(field_value)
        @component_parsers << parser_obj
        parser_obj.parse
      end
    end

    def derive_parser(field_name)
      raise 'component is unimplemented' if field_name.nil?

      parser_name = "Factories::#{field_name.downcase.split('_').map(&:capitalize).join}Parser"
      Object.const_get(parser_name)
    end
  end
end
