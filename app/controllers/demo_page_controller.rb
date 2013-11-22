include PropertyGrid

class DemoPageController < ApplicationController
  def index
    initialize_attributes
  end

  private

  def initialize_attributes
    @property_grid_record = PropertyGridRecord.new
    @property_grid = define_property_grid
    @javascript = generate_javascript_for_property_groups(@property_grid)
  end

  def define_property_grid
    grid = new_property_grid
    group 'Text Input'
    group_property 'Text', :prop_a
    group_property 'Password', :prop_b, :password
    group 'Date and Time Pickers'
    group_property 'Date', :prop_c, :date
    group_property 'Time', :prop_d, :date
    group_property 'Date/Time', :prop_e, :datetime
    group 'State'
    group_property 'Boolean', :prop_f, :boolean
    group 'Miscellaneous'
    group_property 'Color', :prop_g, :color
    group 'Lists'
    group_property 'Basic List', :prop_h, :list, ['Apples', 'Oranges', 'Pears']
    group_property 'ID - Name List', :prop_i, :db_list, @property_grid_record.records

    grid
  end
end
