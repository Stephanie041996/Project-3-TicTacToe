require_relative '../lib/board'

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
