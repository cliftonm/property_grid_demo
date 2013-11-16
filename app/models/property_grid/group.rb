# Defines a PropertyGrid group
# A group has a name and a collection of properties.
class Group
  attr_accessor :name
  attr_accessor :properties

  def initialize
    @name = nil
    @properties = []
  end

  def add_property(var, name, property_type = :string, collection = nil)
    group_property = GroupProperty.new(var, name, property_type, collection)
    @properties << group_property
    self
  end
end
