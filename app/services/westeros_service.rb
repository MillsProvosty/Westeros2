class WesterosService
  def retrieve(house)
    get_json("/api/v1/house/#{house}?api_key=#{ENV["WESTEROS_API_KEY"]}")
    binding.pry
  end

    private
    def connection
      Faraday.new(:url => "http://westerosapi.herokuapp.com") do |f|
        f.adapter  Faraday.default_adapter
      end
    end

    def get_json(url)
      response = connection.get(url)
      JSON.parse(response.body)
    end
end
