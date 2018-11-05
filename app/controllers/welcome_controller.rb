class WelcomeController < ApplicationController

	def index
		bots_status = get_board_status('bots')
		nodes_status = get_board_status('nodes')
		bots = bots_status["Bots"].map {|bot| Bot.new(bot) }
		nodes = nodes_status["Nodes"].map {|node| Node.new(node) }
		@bot = bots.first.location
	end
end
