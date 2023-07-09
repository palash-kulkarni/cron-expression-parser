require_relative '../../factories/day_of_month_parser'

RSpec.describe Factories::DayOfMonthParser do
  describe 'parse raw value' do
    it 'should return parsed values' do
      parser = Factories::DayOfMonthParser.new('1,15')
      expect(parser.parse).to eq([1, 15])
    end
  end

  describe 'display result' do
    it 'should display result' do
      parser = Factories::DayOfMonthParser.new('1,15')
      parser.parse
      expect(parser.display).to eq('day of month  1 15')
    end
  end
end
