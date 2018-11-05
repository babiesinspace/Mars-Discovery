class Grid < ApplicationRecord

	def initialize(x_axis, y_axis)
		@x_axis = Array.new(x_axis)
		@y_axis = Array.new(y_axis)
	end


end
