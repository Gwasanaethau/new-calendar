require_relative '../../src/calendar'

describe Calendar do
  it 'is created with a unix timestamp' do
    expect(described_class).to respond_to(:new).with(1).argument
  end
end
