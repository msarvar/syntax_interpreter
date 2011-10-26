class Row
  attr_accessor :values
  def initialize(columns)
    @values = columns.inject({}) {|values, column| values.merge({column => nil}) }
  end

  def get_columns(*args)
    args = args.flatten
    if args.empty?
      values.values
    else
      values.to_a.map do |element|
        element[1] if args.include?(element[0])
      end
    end
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
