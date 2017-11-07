class Keyword

  attr_reader :word, :relevance

  def initialize(create_hash)
    @word = create_hash[:text]
    @relevance = create_hash[:relevance].to_f.round(2)
  end
end
