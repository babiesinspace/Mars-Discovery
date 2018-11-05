require 'net/http'

module ApplicationHelper

	def get_board_status(machine=bots)
		base = 'http://headlight-tournament-3.herokuapp.com/'
		endpoint = base + machine
		url = URI.parse(endpoint)
		req = Net::HTTP::Get.new(url.to_s)
		res = Net::HTTP.start(url.host, url.port) do |http|
 			http.request(req)
		end
		JSON.parse(res.body)
	end

end
