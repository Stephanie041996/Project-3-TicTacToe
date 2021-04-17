require_relative '../lib/board'
require_relative '../lib/game'

describe UserInterface do
  let(:userinterface) { described_class.new }

  describe '#initialize' do
    it 'raises arg error if arg passed ' do
      expect { userinterface('str') }.to raise_error(ArgumentError)
    end
  end

  describe 'num_check' do
    context 'when player input is between 1-9' do
      it 'returns true if input is between 0-9' do
        expect(userinterface.num_check(2)).to eq(true)
      end
    end

    context 'when input is nil'
    it 'returns false if player input is empty' do
      expect(userinterface.num_check(nil)).to eq(false)
    end

    context 'when input is > 9'
    it 'returns false if player input is greater than 9' do
      expect(userinterface.num_check(11)).to eq(false)
    end

  end

  describe 'num_check2' do
    context 'when player input is between 1-9' do
      it 'returns true if input is between 0-9' do
        expect(userinterface.num_check2(2)).to eq(true)
      end
    end

    context 'when input is nil'
    it 'returns false if player input is empty' do
      expect(userinterface.num_check2(nil)).to eq(false)
    end

    context 'when input is > 9'
    it 'returns false if player input is greater than 9' do
      expect(userinterface.num_check2(11)).to eq(false)
    end

  end

end

describe Board do
  subject(:board) { described_class.new }

  describe '#initialize' do
    it 'raises arg error if arg passed ' do
      expect { board('str') }.to raise_error(ArgumentError)
    end

    it 'returns an array with 9 empty spaces' do
      expect(subject.board).to be_an(Array)
    end

    it 'contains a win sequence thats an array' do
      expect(subject.win_sequence).to be_an(Array)
    end
  end
end
