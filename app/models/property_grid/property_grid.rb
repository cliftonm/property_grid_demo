# A PropertyGrid container
# A property grid consists of property groups.
class PropertyGrid
  attr_accessor :groups

  def initialize
    @groups = []
  end

  # Give a group name, creates a group.
  def add_group(name)
    group = Group.new
    group.name = name
    @groups << group
    yield(group)          # yields to block creating group properties
    self                  # returns the PropertyGrid instance
  end
end
