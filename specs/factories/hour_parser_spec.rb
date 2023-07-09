require_relative '../../factories/hour_parser'

RSpec.describe Factories::HourParser do
  describe 'parse raw value' do
    it 'should return parsed values' do
      parser = Factories::HourParser.new('1,15')
      expect(parser.parse).to eq([1, 15])
    end
  end

  describe 'display result' do
    it 'should display result' do
      parser = Factories::HourParser.new('1,15')
      parser.parse
      expect(parser.display).to eq('hour          1 15')
    end
  end
end
