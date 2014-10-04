
require 'logic'

describe Logic do

	let(:logic) { Logic.new }
	let(:player) { double :player }
	let(:player2) { double :player }

	it "can have players added" do
		logic.add_player(player)
		expect(logic.player1).to eq player
		
	end

	it "knows when two players have been added" do
		logic.add_player(player)
		logic.add_player(player2)
		expect(logic.has_two_players?).to be true
	end

	it "won't add a new player when 2 players are in the game" do
		2.times { logic.add_player(player) }
		logic.add_player(player2)
		expect(logic.player2).to eq player
	end

	it "will have by default three rounds" do
		expect(logic.rounds).to be 3
	end

	it "the number of rounds can be changed when initializing" do
		logic = Logic.new(5)
		expect(logic.rounds).to eq 5
	end


	player1.gesture = 'rock'
	player2.gesture = 'paper'

	turn(player.gesture

end
class Player
	gestures
	points