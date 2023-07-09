require_relative '../common/constants'

module CronExpression
  # Validator validates cron expression
  class Validator
    include Common::Constants

    def initialize(fields)
      @fields = fields
      @total_number_of_fields = TOTAL_NUMBER_OF_FIELDS
    end

    def validate_number_of_fields
      raise 'invalid expression' if @fields.count != @total_number_of_fields

      true
    end
  end
end
