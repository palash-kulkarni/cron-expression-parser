require_relative './common/constants'
require_relative './common/enums'
require_relative './factories/expression_parser'
require_relative './cron_expression/validator'

# CronParser class which takes cron expression, validates, initiate parser and display result
class CronParser
  attr_accessor :field_values, :validator, :exp_parser

  include Common::Constants
  include Common::Enums

  def initialize
    raise 'cron expression is not passed' if ARGV[0].nil?

    @fields = ARGV[0].split(' ').compact
    @validator = CronExpression::Validator.new(@fields)
  end

  def validate
    @validator.validate_number_of_fields
  end

  def initiate_parser
    @exp_parser = Factories::ExpressionParser.new(@fields)
    @exp_parser.invoke_parser
  end

  def display
    @exp_parser.component_parsers.each do |component_parser|
      puts component_parser.display
    end
  end

  def init
    validate
    initiate_parser
    display
  end
end
