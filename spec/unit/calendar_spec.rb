require_relative '../../src/calendar'

describe Calendar do
  it 'is created with a unix timestamp' do
    expect(described_class).to respond_to(:new).with(1).argument
  end

  context 'when initialised with 0 –' do
    subject { described_class.new 0 }

    it 'returns a 0 for the year' do
      expect(subject.year).to equal 0
    end
    it 'returns a 0 for the month' do
      expect(subject.month).to equal 0
    end
    it 'returns a 0 for the week' do
      expect(subject.week).to equal 0
    end
    it 'returns a 0 for the day' do
      expect(subject.day).to equal 0
    end
    it 'returns a 0 for the hour' do
      expect(subject.hour).to equal 0
    end
    it 'returns a 0 for the minute' do
      expect(subject.minute).to equal 0
    end
    it 'returns a 0 for the second' do
      expect(subject.second).to equal 0
    end
  end

  context 'when initialised with a known date since the epoch'\
    ' (01/01/1970 Gregorian) –' do
    subject { described_class.new 34_563_661 }

    it 'returns a 1 for the year' do
      expect(subject.year).to equal 1
    end
    it 'returns a 1 for the month' do
      expect(subject.month).to equal 1
    end
    it 'returns a 1 for the week' do
      expect(subject.week).to equal 1
    end
    it 'returns a 1 for the day' do
      expect(subject.day).to equal 1
    end
    it 'returns a 1 for the hour' do
      expect(subject.hour).to equal 1
    end
    it 'returns a 1 for the minute' do
      expect(subject.minute).to equal 1
    end
    it 'returns a 1 for the second' do
      expect(subject.second).to equal 1
    end
  end

  context 'when initialised with a known date in the future –' do
    subject { described_class.new 3_179_523_661 }

    it 'returns a 101 for the year' do
      expect(subject.year).to equal 101
    end
    it 'returns a 1 for the month' do
      expect(subject.month).to equal 1
    end
    it 'returns a 1 for the week' do
      expect(subject.week).to equal 1
    end
    it 'returns a 1 for the day' do
      expect(subject.day).to equal 1
    end
    it 'returns a 1 for the hour' do
      expect(subject.hour).to equal 1
    end
    it 'returns a 1 for the minute' do
      expect(subject.minute).to equal 1
    end
    it 'returns a 1 for the second' do
      expect(subject.second).to equal 1
    end
  end

  context 'when formatting output –' do
    context 'when the value of seconds is small –' do
      it 'prepends a leading zero to the second' do
        (0...10).each do |index|
          subject = described_class.new index
          expect(subject.second_padded).to eql "0#{index}"
        end
      end
    end

    context 'when the value of seconds is large –' do
      it 'does not prepend a leading zero to the second' do
        (10...60).each do |index|
          subject = described_class.new index
          expect(subject.second_padded).not_to eql "0#{index}"
          expect(subject.second_padded).to eql index.to_s
        end
      end
    end

    context 'when the value of minutes is small –' do
      it 'prepends a leading zero to the minute' do
        (0...10).each do |index|
          subject = described_class.new index * 60
          expect(subject.minute_padded).to eql "0#{index}"
        end
      end
    end

    context 'when the value of minutes is large –' do
      it 'does not prepend a leading zero to the minute' do
        (10...60).each do |index|
          subject = described_class.new index * 60
          expect(subject.minute_padded).not_to eql "0#{index}"
          expect(subject.minute_padded).to eql index.to_s
        end
      end
    end

    context 'when the value of hours is small –' do
      it 'prepends a leading zero to the hour' do
        (0...10).each do |index|
          subject = described_class.new index * 60 * 60
          expect(subject.hour_padded).to eql "0#{index}"
        end
      end
    end

    context 'when the value of hours is large –' do
      it 'does not prepend a leading zero to the hour' do
        (10...24).each do |index|
          subject = described_class.new index * 60 * 60
          expect(subject.hour_padded).not_to eql "0#{index}"
          expect(subject.hour_padded).to eql index.to_s
        end
      end
    end

    it 'prepends a leading zero to the day' do
      (0...7).each do |index|
        subject = described_class.new index * 60 * 60 * 24
        expect(subject.day_padded).to eql "0#{index}"
      end
    end

    it 'prepends a leading zero to the week' do
      (0...4).each do |index|
        subject = described_class.new index * 60 * 60 * 24 * 7
        expect(subject.week_padded).to eql "0#{index}"
      end
    end

    context 'when the value of months is small –' do
      it 'prepends a leading zero to the month' do
        (1...10).each do |index|
          subject = described_class.new index * 60 * 60 * 24 * 7 * 4
          expect(subject.month_padded).to eql "0#{index}"
        end
      end
    end

    context 'when the value of months is large –' do
      it 'does not prepend a leading zero to the month' do
        (10...13).each do |index|
          subject = described_class.new index * 60 * 60 * 24 * 7 * 4
          expect(subject.month_padded).not_to eql "0#{index}"
          expect(subject.month_padded).to eql index.to_s
        end
      end
    end

    context 'when the value of years is small –' do
      it 'prepends a leading zero to the year' do
        (1...10).each do |index|
          subject = described_class.new index * 60 * 60 * 24 * 7 * 4 * 13
          expect(subject.year_padded).to eql "0#{index}"
        end
      end
    end

    context 'when the value of years is large –' do
      it 'does not prepend a leading zero to the year' do
        (10..100).each do |index|
          subject = described_class.new index * 60 * 60 * 24 * 7 * 4 * 13
          expect(subject.year_padded).not_to eql "0#{index}"
          expect(subject.year_padded).to eql index.to_s
        end
      end
    end
  end
end
