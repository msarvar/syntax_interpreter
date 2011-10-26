require 'spec_helper'
describe Table do
  let(:table) { Table.new("test_table", "id")}
  context "#initialize" do
    it "initializes a table with name" do
      table.name.should == "test_table"
    end

    it "initializes a table with a primary key" do
      table.columns.should include("id")
    end

    it "sets a primary key" do
      table.primary_key.should == "id"
    end
  end

  it "adds a column to the table" do
    table.add_column("name")
    table.columns.should include("name")
  end

  it "add a row into a table" do
    row = Row.new([])
    mock(row).values { {"id" => 1, "name" => "itable"} }
    table.add(row)
    table.rows.keys.should include(1)
    table.rows.values.should include(row)
  end

  it "stringifies the table" do
    table.to_s.should == %{Table{name='test_table', rows={}, columns=["id"]}};
  end
end
