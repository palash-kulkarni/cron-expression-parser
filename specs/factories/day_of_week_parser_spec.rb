require_relative '../../factories/day_of_week_parser'

RSpec.describe Factories::DayOfWeekParser do
  describe 'parse raw value' do
    it 'should return parsed values' do
      parser = Factories::DayOfWeekParser.new('1,15')
      expect(parser.parse).to eq([1, 15])
    end
  end

  describe 'display result' do
    it 'should display result' do
      parser = Factories::DayOfWeekParser.new('1,15')
      parser.parse
      expect(parser.display).to eq('day of week   1 15')
    end
  end
end
