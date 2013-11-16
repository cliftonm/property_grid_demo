class ControlType
  attr_accessor :type_name
  attr_accessor :class_name

  def initialize(type_name, class_name = nil)
    @type_name = type_name
    @class_name = class_name
  end
end

