include PropertyGridHelpers

class GroupProperty
  attr_accessor :property_var
  attr_accessor :property_name
  attr_accessor :property_type
  attr_accessor :property_collection

  # some of these leverage jquery: http://jqueryui.com/

  def initialize(var, name, property_type, collection = nil)
    @property_var = var
    @property_name = name
    @property_type = property_type
    @property_collection = collection
  end

  def get_input_control
    form_type = get_property_type_map[@property_type]
    raise "Property '#{@property_type}' is not mapped to a Rails form input control" if form_type.nil?

    erb = "<%= f.#{form_type.type_name} :#{@property_var}"
    erb << ", class: '#{form_type.class_name}'" if form_type.class_name.present?
    erb << ", #{@property_collection}" if @property_collection.present? && @property_type == :list
    erb << ", options_from_collection_for_select(f.object.records, :id, :name, f.object.#{@property_var})" if @property_collection.present? && @property_type == :db_list
    erb << "%>"
  end
end
