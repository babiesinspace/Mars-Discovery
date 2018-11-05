class WelcomeController < ApplicationController

	def index
		bots_status = get_board_status('bots')
		nodes_status = get_board_status('nodes')
		bots = bots_status["Bots"].map do |bot| 
			puts bot
			puts bot["Claims"]
			puts bot["Score"]
			puts bot["Id"]
			puts bot["Location"]
			Bot.create(bot)
		end
		nodes = nodes_status["Nodes"].map {|node| Node.create(node) }
		grid = {x_axis: 20, y_axis: 20, bots_array: bots, node_array: nodes}
		@grid = Grid.new(grid)
	end
end
