class Grid < ApplicationRecord
	attr_accessor :nodes, :bots, :grid 

	def initialize(args)
		@grid = Array.new(args[:x_axis]){Array.new(args[:y_axis])}
		@bots = args[:bots_array]
		@nodes = args[:node_array]
		plot_territory(@bots)
		plot_territory(@nodes)
	end

	def plot_territory(machine_array)
		# check if box is empty
		# add machine to box
		machine_array.each do |machine|
			x_coordinates = machine.location.first
			y_coordinates = machine.location.last
			if !@grid[x_coordinates][y_coordinates].empty?
				@grid[x_coordinates][y_coordinates] = 'X'
			else
				machine.class == Bot ? @grid[x_coordinates][y_coordinates] = 'B' : @grid[x_coordinates][y_coordinates] = 'N'
			end
		end
	end

end
