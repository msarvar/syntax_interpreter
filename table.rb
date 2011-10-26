class Table
  attr_accessor :name, :columns, :primary_key, :rows

  def initialize(name, primary_key)
    @name = name
    @primary_key = primary_key
    @columns = []
    @rows = {}
    add_column(primary_key)
  end

  def add_column(key)
   @columns << key
  end

  def add(row)
    primary_key_value = row.values[primary_key]
    @rows[primary_key_value] = row
  end

  def to_s
    %{Table{name='#{name}', rows=#{rows}, columns=#{columns}}}
  end
end
