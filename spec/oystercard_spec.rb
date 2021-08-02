require 'oystercard'

describe Oystercard do

  let(:card) { Oystercard.new(5)}

  it 'responds to balance' do
    expect(subject).to respond_to(:balance)
  end

  it 'has a balance' do
    expect(card.balance).not_to be(0)
  end
  
end