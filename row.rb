class Row
  attr_accessor :values
  def initialize(columns)
    @values = columns.inject({}) {|values, column| values.merge({column => nil}) }
  end

  def get_columns(*args)
    args.flatten!.empty? ? values.values : values.select {|key| args.include?(key)}.values
  end

  def set(column_name, value)
    @values[column_name] = value
  end

  def to_s
    values.to_s
  end

  def to_a
    [self]
  end
end
