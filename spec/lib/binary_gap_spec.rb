require 'binary_gap'

RSpec.describe BinaryGap do

    context 'with extreme values' do
      it 'finds the zero groupings correctly' do
        expect(BinaryGap.new.solution(1)).to eq(0)           # 1
        expect(BinaryGap.new.solution(5)).to eq(1)           # 101
        expect(BinaryGap.new.solution(2147483647)).to eq(0)  # 1111111111111111111111111111111
      end
    end

    context 'with trailing zeros' do
      it 'finds the zero groupings correctly' do
        expect(BinaryGap.new.solution(6)).to eq(0)           # 110
        expect(BinaryGap.new.solution(328)).to eq(2)         # 101001000
      end
    end

    context 'with even numbers' do
      it 'ignores the trailing zeros' do
        expect(BinaryGap.new.solution(4)).to eq(0)           # 100
        expect(BinaryGap.new.solution(16)).to eq(0)          # 10000
        expect(BinaryGap.new.solution(1024)).to eq(0)        # 10000000000
      end
    end

    context 'with groups of one zero' do
      it 'finds the zero groupings correctly' do
        expect(BinaryGap.new.solution(11)).to eq(1)          # 1011
        expect(BinaryGap.new.solution(13)).to eq(1)          # 1101
      end
    end

    context 'with groups of two zeros' do
      it 'finds the zero groupings correctly' do
        expect(BinaryGap.new.solution(19)).to eq(2)          # 10011
        expect(BinaryGap.new.solution(82)).to eq(2)          # 1010010
      end
    end

    context 'with groups of three zeros' do
      it 'finds the zero groupings correctly' do
        expect(BinaryGap.new.solution(17)).to eq(3)          # 10001
        expect(BinaryGap.new.solution(1162)).to eq(3)        # 10010001010
      end
    end

    context 'with medium length groupings' do
      it 'finds the zero groupings correctly' do
        expect(BinaryGap.new.solution(20)).to eq(1)          # 10100
        expect(BinaryGap.new.solution(51712)).to eq(2)       # 110010100000000
        expect(BinaryGap.new.solution(9)).to eq(2)           # 1001
        expect(BinaryGap.new.solution(561892)).to eq(3)      # 10001001001011100100
        expect(BinaryGap.new.solution(74901729)).to eq(4)    # 100011101101110100011100001
        expect(BinaryGap.new.solution(1376796946)).to eq(5)  # 1010010000100000100000100010010
        expect(BinaryGap.new.solution(66561)).to eq(9)       # 10000010000000001
      end
    end

    context 'with long groupings' do
      it 'finds the zero groupings correctly' do
        expect(BinaryGap.new.solution(6291457)).to eq(20)    # 11000000000000000000001
        expect(BinaryGap.new.solution(805306373)).to eq(25)  # 110000000000000000000000000101
        expect(BinaryGap.new.solution(1610612737)).to eq(28) # 1100000000000000000000000000001
        expect(BinaryGap.new.solution(1073741825)).to eq(29) # 1000000000000000000000000000001
      end
    end

end
