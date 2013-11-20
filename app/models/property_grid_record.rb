class PropertyGridRecord < NonPersistedActiveRecord
  attr_accessor :prop_a
  attr_accessor :prop_b
  attr_accessor :prop_c
  attr_accessor :prop_d
  attr_accessor :prop_e
  attr_accessor :prop_f
  attr_accessor :prop_g
  attr_accessor :prop_h
  attr_accessor :prop_i
  attr_accessor :records

  def initialize
    @records =
        [
            ARecord.new(1, 'California'),
            ARecord.new(2, 'New York'),
            ARecord.new(3, 'Rhode Island'),
        ]

    @prop_a = 'Hello World'
    @prop_b = 'Password!'
    @prop_c = '08/19/1962'
    @prop_d = '12:32 pm'
    @prop_e = '08/19/1962 12:32 pm'
    @prop_f = true
    @prop_g = '#ff0000'
    @prop_h = 'Pears'
    @prop_i = 2
  end
end
