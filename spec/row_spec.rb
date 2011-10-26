describe Row do
  let(:row) { Row.new(["name", "id"]) }
  describe "#initialize" do
    it "sets a values attribute" do
      row.values.should == {"name" => nil, "id" => nil}
    end
  end

  describe "gets row columns" do
    it "returns columns values " do
      row.values = {"name" => "test", "id" => 1}
      row.get_columns.should == ["test", 1]
    end
    it "returns values for selected columns" do
      today = Date.today
      row.values = {"name" => "test", "id" => 1, "created_at" => today}
      row.get_columns("name", "created_at").should == ["test", today]
    end
  end

  describe "#set" do
    it "sets a value to column elements" do
      row.set("name", "sarvar")
      row.values.should == {"name" => "sarvar", "id" => nil}
    end
  end
end
