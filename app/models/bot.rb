class Bot < ApplicationRecord
	attr_reader :claims, :id, :location, :score

	def initialize(args)
		@claims = args["Claims"]
		@id = args["Id"]
		@location = get_coordinates(args["Location"])
		@score = args["Score"]
	end

	def get_coordinates(location)
		x = location["X"]
		y = location["Y"]
		[x, y]
	end
end
