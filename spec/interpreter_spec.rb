require 'spec_helper'
describe Interpreter do
  let(:today) {Date.today}
  let(:input) { %{create table users (primary key name, passwd);
                     insert into users set name='parrt', passwd='foobar';
                     insert into users set name='tombu', passwd='spork';
                     p = select passwd, name from users; // reverse column order
                     print p;}
                }
  let(:interp) { Interpreter.new(input)}
  let(:table) { Table.new("test_table", "id") }
  let(:row) do
    row = Row.new(["id", "name", "created_at"])
    row.set("id", 1)
    row.set("created_at", today)
    row.set("name", "sarvar")
    row
  end

  let(:result_set) {ResultSet.new}
  describe "#initialize" do
    it "sets a lexer" do
      interp.lexer.class.should == Q::Lexer
    end

    it "tokenizes the lexer" do
      interp.tokens.class.should == ANTLR3::CommonTokenStream
    end

    it "initializes a parser" do
      interp.parser.class.should == Q::Parser
    end

  end

  describe "creates a table" do
    it "creates a table with given columns and sets a primary key" do
      mock(table).add_column(anything).times(3)
      mock(Table).new("test_table", "id") { table }
      interp.create_table("test_table", "id", ["name", "id", "created_at"])
      interp.tables["test_table"].class.should == Table
    end
  end

  describe "inserting a value to the table" do
    let(:row) { Row.new([]) }
    it "inserts array of values to given set of column names" do
      interp.tables["test_table"] = Table.new("test_table", "id")
      mock(interp.tables["test_table"]).add(row)
      interp.insert_into("test_table", row)
    end

    it "registers an error on the listener object if table doesn't exist" do
      mock(interp.listener).error("No such table test_table")
      interp.insert_into("test_table", row)
    end
  end

  describe "select table elements" do
    let(:another_row) do
      row = Row.new(["id", "name", "created_at"])
      row.set("id", 2)
      row.set("created_at", today )
      row.set("name", "test_dummy")
      row
    end

    before do
      interp.create_table("test_table", "id", ["name", "created_at"])
      interp.insert_into("test_table", row)
    end

    it "returns all columns values for the given table" do
      interp.insert_into("test_table", another_row)
      interp.select("test_table", ["id", "name", "created_at"]).results.should == [[1, "sarvar", today], [2, "test_dummy", today]]
    end

    it "returns columns values for the given table for provided columns" do
      interp.insert_into("test_table", row)
      interp.select("test_table", ["id", "name"]).results.should == [[1, "sarvar"]]
    end

    it "returns requested row if the provided primary key exists in the hash" do
      interp.insert_into("test_table", another_row)
      interp.select("test_table", ["id", "name", "created_at"], "id", 1).results.should == [[1, "sarvar", today]]
      interp.select("test_table", ["id", "name"], "id", 2).results.should == [[2, "test_dummy"]]
    end
  end

  it "stores an object in the globals variable" do
    interp.store("test_table", table)
    interp.globals["test_table"].should == table
  end

  it "loads an object from the globals by name" do
    interp.store("test_table", table)
    interp.load("test_table").should == table
  end

  it "prints an object into the output" do
    interp.print(table).should == table.to_s
  end

  it "prints an object into the output" do
    interp.print(row).should == row.to_s
  end

  it "prints a set of results in pretty format" do
    result_set.add(row.get_columns)
    interp.print(result_set).should == result_set.results.map{|result| result.join(',')}.join('\n')
  end
end
