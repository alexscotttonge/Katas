require 'time_planner'

describe TimePlanner do

  it 'returns the correct time slots' do
    expect(TimePlanner.meeting_planner([[10,50],[60,120],[140,210]], [[0,15],[60,70]], 8)).to eq [60, 68]
    expect(TimePlanner.meeting_planner([[7,12]], [[2,11]], 5)).to eq nil
  end

end
