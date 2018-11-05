class Bot < ApplicationRecord
	include Foo
	attr_reader :claims, :id, :location, :score

	def initialize(args)
		@claims = args["Claims"] ? args["Claims"] : []
		@id = args["Id"]
		@location = get_coordinates(args["Location"])
		@score = args["Score"]
	end

end
