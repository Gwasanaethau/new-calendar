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
end
