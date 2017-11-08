
class WatsonService

  def initialize
    @conn = get_conn
  end

  def get_analysis(description)
    raw_response = get_response(description)
    parsed_response = parse_response(raw_response)
    make_objects(parsed_response)
  end

  private

  attr_reader :conn

  def get_response(description)
    conn.get("/natural-language-understanding/api/v1/analyze?version=2017-02-27&text=#{URI.escape(description)}&features=keywords&return_analyzed_text=false&clean=true&fallback_to_raw=true&concepts.limit=30&emotion.document=false&entities.limit=50&entities.emotion=false&entities.sentiment=false&keywords.limit=9&keywords.emotion=false&keywords.sentiment=false&relations.model=en-news&semantic_roles.limit=50&semantic_roles.entities=false&semantic_roles.keywords=false&sentiment.document=true").body
  end

  def parse_response(raw_response)
    JSON.parse(raw_response, symbolize_names: true)[:keywords]
  end

  def make_objects(parsed_response)
    parsed_response.map do |keyword|
      Keyword.new(keyword)
    end
  end

  def get_conn
    Faraday.new(url: "https://watson-api-explorer.mybluemix.net") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.headers["user"] = ENV["WATSON_USERNAME"]
      faraday.headers["password"] = ENV["WATSON_PASSWORD"]
    end
  end
end
