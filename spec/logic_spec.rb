
require 'logic'

describe Logic do

	let(:game) { Logic.new }
	let(:player) { double :player , weapon: 'Rock' }
	let(:player2) { double :player, weapon: 'Lizard' }
	let(:player3) { double :player, weapon: 'Lizard' }
	let(:player4) { double :player, weapon: 'Spock' }


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

	it 'knows when there is a tie' do
		game.add_player(player2)
		game.add_player(player3)
		expect(game.tie?).to eq true
	end

	it "knows what weapon needs to win" do
		game.add_player(player2)
		game.add_player(player4)
		expect(game.round_winner).to eq player2
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

		it 'knows who is the round winner' do
			expect(game.round_winner).to eq player
		end

		# it "updates the scores after a round winner" do
		# 	game.update_scores
		# 	expect(game.player1.points).to eq 1
		# 	expect(game.player2.points).to eq 0
		# end

	
	end

end
