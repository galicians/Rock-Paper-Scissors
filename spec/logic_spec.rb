
require 'logic'

describe Logic do

	let(:game) { Logic.new }
	let(:player) { double :player , weapon: 'Rock' }
	let(:player2) { double :player, weapon: 'Lizard' }

	it "can have players added" do
		game.add_player(player)
		expect(game.player1).to eq player
	end


	it "will have by default three rounds" do
			expect(game.rounds).to be 3
	end

	it "the number of rounds can be changed when initializing" do
			game = Logic.new(5)
			expect(game.rounds).to eq 5
	end

	context "has two players" do

		before do
			game.add_player(player)
			game.add_player(player2) 
		end

		it "knows when two players have been added" do
			expect(game.has_two_players?).to be true
		end
		
		it "won't add a new player when 2 players are in the game" do
			game.add_player(player)
			expect(game.player2).to eq player2
		end
	
		it 'sorts out alphabetically the turn weapons' do
			expect(game.pairing).to eq ['Lizard','Rock']
		end

	end

end
