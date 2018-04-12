class ResultSearch

  def initialize(request)
    @request = request
  end

  def update_request
    request.status = parsed_response[:status]
    request.save
  end

  private

    attr_reader :request, :status

    def conn
      Faraday.get("http://localhost:3000/api/v1/results?age=#{request.age}&name=#{request.name}&gender=#{request.gender}&country_of_origin=#{request.country_of_origin}&group_size=#{request.group_size}&country_of_seperation=#{request.country_of_separation}&client_secret=#{ENV['CLIENT_SECRET']}&client_id=#{ENV['CLIENT_ID']}")
    end

    def parsed_response
      JSON.parse(conn.body, symbolize_names: true)
    end

end
