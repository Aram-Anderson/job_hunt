class CompanyService

  def initialize
    @conn = get_conn
  end

  def execute(company_name, remote_ip)
    response = get_response(company_name, remote_ip)
    parsed_response = parse_response(response)
    make_company(parsed_response)
  end


  private

    attr_reader :conn

    def get_response(company_name, remote_ip)
      conn.get("/api/api.htm?v=1&format=json&t.p=#{ENV['GLASSDOOR_PARTNER_ID']}&t.k=#{ENV['GLASSDOOR_API_KEY']}&action=employers&q=#{company_name}&userip=#{remote_ip}&useragent=chrome/%2F4.0").body
    end

    def parse_response(response)
      JSON.parse(response, symbolize_names: true)
    end

    def make_company(parsed_response)
      Company.new(parsed_response[:response][:employers].first)
    end

    def get_conn
      Faraday.new(url: "http://api.glassdoor.com") do |faraday|
        faraday.adapter Faraday.default_adapter
      end
    end

end
