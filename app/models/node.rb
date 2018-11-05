class Node < ApplicationRecord
	include Foo

	def initialize(args)
		@claimed_by = args["ClaimedBy"] 
		@id = args["Id"]
		@location = [args["Location"]["X"], args["Location"]["Y"]]
		@value = args["Value"]
	end

end
