require 'calculator'

describe Calculator do

  let(:calculator) { Calculator.new }

  it 'should calculate cost of empty basket' do
    expect(calculator.total(0)).to eq 0
  end


end
