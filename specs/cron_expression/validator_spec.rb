require_relative '../../cron_expression/validator'

RSpec.describe CronExpression::Validator do
  describe 'validate number of fields' do
    it 'should pass' do
      expression = '*/15 0 1,15 * 1-5 /user/bin/find'
      fields = expression.split(' ')
      cron_expression = CronExpression::Validator.new(fields)
      expect(cron_expression.validate_number_of_fields).to eq(true)
    end

    it 'should fail' do
      expression = '*/15 0 1,15 * 1-5'
      fields = expression.split(' ')
      cron_expression = CronExpression::Validator.new(fields)
      expect { cron_expression.validate_number_of_fields }.to raise_error(RuntimeError, 'invalid expression')
    end
  end
end
