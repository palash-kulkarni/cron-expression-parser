require_relative '../../factories/expression_parser'

RSpec.describe Factories::ExpressionParser do
  describe 'invoke parser' do
    it "should invoke all component's parsers" do
      expression = '*/15 0 1,15 * 1-5 /user/bin/find'
      fields = expression.split(' ')
      expression_parser = Factories::ExpressionParser.new(fields)
      expression_parser.invoke_parser
      comp_parsers = expression_parser.component_parsers
      expect(comp_parsers.count).to eq(6)
      expect(comp_parsers.map(&:class)).to eq([Factories::MinuteParser, Factories::HourParser, 
                                               Factories::DayOfMonthParser, Factories::MonthParser, 
                                               Factories::DayOfWeekParser, Factories::CommandParser])
    end

    it 'should fail for unimplemented parsers' do
      expression = '10 10 */15 0 1,15 * 1-5 /user/bin/find'
      fields = expression.split(' ')
      expression_parser = Factories::ExpressionParser.new(fields)
      expect { expression_parser.invoke_parser }.to raise_error(RuntimeError, 'component is unimplemented')
    end
  end
end
