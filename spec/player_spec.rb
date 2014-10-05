require 'player'

describe Player do

	let(:player) { Player.new }
	
	it 'should be initialized with the gestures' do
		expect(player.weapons.size).to eq 5
	end

	it 'should be initialized with 0 points' do
		expect(player.points).to eq 0
	end

	it 'should be able to accept a gesture' do
		expect(player.weapon('Rock')).to eq 'Rock'
	end

	it 'should not accept something is not a gesture' do
		expect{ player.weapon('Lock') }.to raise_error "Not an authorized weapon"
	end


end