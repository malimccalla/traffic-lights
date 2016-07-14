require_relative '../lib/traffic_light.rb'

describe TrafficLight do

  it 'this is a fantastic test' do
#setup
    x = 1
#exercise
    x += 1
#verify
    expect(x).to eq(2)
#teardown (you will probably not need this)
  end

  it 'should have the state Red when instantiated' do
    expect(subject.state).to eq(:red)
  end

  it 'changes the state from red to amber with #next' do
    expect{subject.next}.to change{subject.state}.to eq(:amber)
  end

  it 'states should contain :red :amber :green' do
    expect(subject.states).to match_array([:red,:amber,:green,:amber])
  end
  context 'when green' do
    it 'should change state to the next expected state' do
      subject.next # amber
      subject.next # green
      expect{subject.next}.to change{subject.state}.to eq(:amber)
    end
  end

end
