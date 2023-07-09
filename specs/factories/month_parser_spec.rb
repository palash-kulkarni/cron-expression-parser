require_relative '../../factories/month_parser'

RSpec.describe Factories::MonthParser do
  describe 'parse raw value' do
    it 'should return parsed values' do
      parser = Factories::MonthParser.new('1,15')
      expect(parser.parse).to eq([1, 15])
    end
  end

  describe 'display result' do
    it 'should display result' do
      parser = Factories::MonthParser.new('1,15')
      parser.parse
      expect(parser.display).to eq('month         1 15')
    end
  end
end
