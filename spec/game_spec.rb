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

   describe 'tie?' do
    context 'returning tie' do
      it 'returns true if all are string' do
        expect(board.tie?(%w[x x x x o o o o o])).to be true
      end
      it 'returns false if all are not string' do
        expect(board.tie?(['x', 'x', 'x', 'x', 'o', 'o', 'o', nil, nil])).to be false
      end
    end
  end

  describe 'Win?' do
    context 'when win combination match' do
      it 'returns true if there are any winning combo' do
        expect(board.win?(['x', 'x', 'x', 4, 5, 6, 7, 8, 9])).to eq true
      end
      it 'returns false if  there are no winning combo' do
        expect(board.win?([1, 2, 3, 4, 5, 6, 7, 8, 9])).to eq false
      end
    end
  end

end
