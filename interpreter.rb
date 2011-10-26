class Interpreter
  attr_accessor :lexer, :tokens, :parser, :tables, :listener, :rows, :globals
  def initialize(input)
    @lexer = Q::Lexer.new(ANTLR3::StringStream.new(input))
    @tokens = ANTLR3::CommonTokenStream.new(lexer)
    @parser = Q::Parser.new(tokens, self)
    @tables = {}
    @globals = {}
    parser.program
  end

  def listener
    @listener ||= InterpreterListener.new
  end

  def create_table(table_name, primary_key, columns)
    table = Table.new(table_name, primary_key)
    columns.each { |column| table.add_column(column.to_s) }
    tables[table_name] = table
  end

  def insert_into(name, row)
    t = tables[name]
    t.nil? ? listener.error("No such table #{name}") : t.add(row)
  end

  def select(table_name, columns, key = nil, value = nil)
    table = tables[table_name]
    if key && key == table.primary_key
      values = table.rows[value].to_a
    else
      values = table.rows.values
    end
    rs = ResultSet.new
    values.each do |row|
      rs.add(row.get_columns(columns))
    end
    rs
  end

  def store(name, object)
    @globals[name] = object
  end

  def load(name)
    @globals[name]
  end

  def print(object)
    if object.is_a?(ResultSet)
      puts object.results.map{|result| result.join(',')}.join('\n')
    else
      puts object
    end
  end

end
