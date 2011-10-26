describe ResultSet do
  describe "add" do
    it "adds a result to the hash" do
      result = ResultSet.new
      result.add(["sarvar", 1])
      result.results.should == [["sarvar", 1]]
    end
  end
end
