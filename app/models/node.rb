class Node < ApplicationRecord
	include Foo

	attr_reader :claimed_by, :id, :location, :value 

	def initialize(args)
		@claimed_by = args["ClaimedBy"] 
		@id = args["Id"]
		@location = get_coordinates(args["Location"])
		@value = args["Value"]
	end

end
