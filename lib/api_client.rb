module FarCry
  class ApiClient
    attr_reader :base_url

    def initialize(base_url=nil)
      @base_url = base_url || ENV['API_URL']
    end

    def post(path, data)
      response = RestClient.post("#{base_url}/#{path}", headers)
      JSON.parse(response.body)
    end

    private

    def headers
      {
        Authorization: "Token #{token}"
      }
    end

    def token
      JWT.encode({:role => 'api-data', :exp => Time.now.to_i + 86400}, hmac_secret, "HS512")
    end

    def hmac_secret
      ENV["API_SECRET"]
    end
  end
end
