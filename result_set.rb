class ResultSet
  attr_accessor :results
  def initialize
    @results = []
  end

  def add(row)
    @results << row
  end
end
