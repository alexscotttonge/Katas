require 'calculator'

describe Calculator do
  let(:calculator) { Calculator.new }

  it 'should calculate cost of empty basket' do
    calculator.add_item(0)
    expect(calculator.total).to eq 0
  end

  it 'should return 8 for one book' do
    calculator.add_item(4)
    expect(calculator.total).to eq 8
  end

  it 'should not give a discount for multiple copies of same book' do
    calculator.add_item(3)
    calculator.add_item(3)
    calculator.add_item(3)
    expect(calculator.total).to eq 24
  end

  it 'should give a 5% discount for two copies of a different book' do
    calculator.add_item(1)
    calculator.add_item(2)
    expect(calculator.total).to eq 15.2
  end
end
