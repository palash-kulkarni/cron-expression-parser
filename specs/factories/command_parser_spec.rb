require_relative '../../factories/command_parser'

RSpec.describe Factories::CommandParser do
  describe 'parse raw value' do
    it 'should return parsed values' do
      parser = Factories::CommandParser.new('/user/bin/find')
      expect(parser.parse).to eq(['/user/bin/find'])
    end
  end

  describe 'display result' do
    it 'should display result' do
      parser = Factories::CommandParser.new('/user/bin/find')
      parser.parse
      expect(parser.display).to eq('command       /user/bin/find')
    end
  end
end
