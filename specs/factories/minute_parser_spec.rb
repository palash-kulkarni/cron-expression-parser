require_relative '../../factories/minute_parser'

RSpec.describe Factories::MinuteParser do
  describe 'parse raw value' do
    it 'should return parsed values' do
      parser = Factories::MinuteParser.new('1,15')
      expect(parser.parse).to eq([1, 15])
    end
  end

  describe 'display result' do
    it 'should display result' do
      parser = Factories::MinuteParser.new('1,15')
      parser.parse
      expect(parser.display).to eq('minute        1 15')
    end
  end
end
