include PropertyGridDsl
include PropertyGridHelpers

class DemoPageController < ApplicationController
  def index
    initialize_attributes
  end

  private

  def initialize_attributes
    @property_grid_record = PropertyGridRecord.new
    @property_grid = new_property_grid
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

    @javascript = ''

    @property_grid.groups.each_with_index do |grp, index|
      @javascript << get_javascript_for_group(index)
    end

  end
end