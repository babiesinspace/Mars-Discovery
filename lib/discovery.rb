require 'httparty'

url = 'http://headlight-tournament-3.herokuapp.com/'

def get_board_status(url, machine=bots)
	endpoint = url + machine
	response = HTTParty.get(endpoint)
	response.parsed_response
end