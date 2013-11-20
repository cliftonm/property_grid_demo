include PropertyGridHelpers

class GroupProperty
  attr_accessor :property_var
  attr_accessor :property_name
  attr_accessor :property_type
  attr_accessor :property_collection

  # some of these use jquery: http://jqueryui.com/
  def initialize(var, name, property_type, collection = nil)
    @property_var = var
    @property_name = name
    @property_type = property_type
    @property_collection = collection
  end

  def get_input_control
    form_type = get_property_type_map[@property_type]
    raise "Property '#{@property_type}' is not mapped to an input control" if form_type.nil?
    erb = get_erb(form_type)

    erb
  end
end
