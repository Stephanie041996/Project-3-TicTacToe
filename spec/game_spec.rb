require_relative '../lib/board'
require_relative '../lib/game'

describe UserInterface do
  let(:userinterface) { described_class.new }

  describe '#initialize' do
    it 'raises arg error if arg passed ' do
      expect { userinterface('str') }.to raise_error(ArgumentError)
    end
  end

end