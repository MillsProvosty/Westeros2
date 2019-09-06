class SearchWesterosFacade
  def find_members(house)
    binding.pry

    conn = Faraday.new(:url => "http://westerosapi.herokuapp.com") do |f|
      f.adapter  Faraday.default_adapter
    end
    response = conn.get "/api/v1/house/#{house}?api_key=#{ENV["WESTEROS_API_KEY"]}"
    JSON.parse(response.body)

  end
end
