require 'calculator'

describe Calculator do

  let(:calculator) { Calculator.new }

  it 'should calculate cost of empty basket' do
    calculator.add_item(0)
    expect(calculator.total).to eq 0
  end


end
