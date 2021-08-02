require 'oystercard'

describe Oystercard do

  it 'responds to balance' do
    expect(subject).to respond_to(:balance)
  end

  it 'has a balance' do
    expect(subject.balance).to eq(0)
  end

  it "responds to top_up" do
    expect(subject).to respond_to(:top_up).with(1).argument
  end

  it "adds money to the oystercard" do
    # expect(subject.top_up(5)).to eq(5)
    expect{subject.top_up(5)}.to change{subject.balance}.by 5
  end

  it "raises error when money exceeds £90 " do
    max_balance = Oystercard::MAX_AMOUNT
    subject.top_up(max_balance)
    expect {subject.top_up(1)}.to raise_error("Exceeds the limit #{max_balance}")
  end

  it 'responds to deduct' do
    expect(subject).to respond_to(:deduct).with(1).argument
  end

  it "subtracts money from the oystercard" do
    expect{subject.deduct(5)}.to change{subject.balance}.by -5
  end

end