require 'spec_helper'
require_relative '../methods'

describe '2 player tic tac toe' do    
  describe '#check_winner?' do

    before(:each) do
      @grid = []
    end
    
    context 'checks if there is a winner for top row' do
      it 'returns true if player x has top row' do
        @grid[0]='x'
        @grid[1]='x'
        @grid[2]='x'
        
        expect(check_winner?(@grid)).to eq true
      end
      
      it 'returns true if player o has top row' do
        @grid[0]='o'
        @grid[1]='o'
        @grid[2]='o'
        
        expect(check_winner?(@grid)).to eq true
      end
    end
    
    context 'checks if there is a winner for diagonals' do
      it 'returns true if player x has diagonals' do
        @grid[0] = 'x'
        @grid[4] = 'x'
        @grid[8] = 'x'

        expect(check_winner?(@grid)).to eq true
      end

      it 'returns true if player o has diagonals' do
        @grid[0] = 'o'
        @grid[4] = 'o'
        @grid[8] = 'o'

        expect(check_winner?(@grid)).to eq true
      end
    end

    context 'does not return a winner' do
      it 'returns false if it is a tie' do
        @grid[0] = 'x'
        @grid[1] = 'o'
        @grid[2] = 'x'
        @grid[3] = 'o'
        @grid[4] = 'x'
        @grid[5] = 'x'
        @grid[6] = 'o'
        @grid[7] = 'x'
        @grid[8] = 'o'

        expect(check_winner?(@grid)).to eq false
      end
    end
  end
end