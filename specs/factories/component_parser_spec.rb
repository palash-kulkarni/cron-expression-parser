require_relative '../../factories/component_parser'

RSpec.describe Factories::ComponentParser do
  describe 'display result' do
    it 'should display result' do
      parser = Factories::ComponentParser.new('1,15', 1, 15)
      parser.parse
      expect(parser.parsed_values).to eq([1, 15])
      expect(parser.parsed_values.count).to eq(2)
    end
  end
end
