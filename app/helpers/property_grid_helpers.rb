module PropertyGridHelpers
  def get_property_type_map
    {
        string: ControlType.new('text_field'),
        text: ControlType.new('text_area'),
        boolean: ControlType.new('check_box'),
        password: ControlType.new('password_field'),
        date: ControlType.new('datepicker'),
        datetime: ControlType.new('text_field', 'jq_dateTimePicker'),
        time: ControlType.new('text_field', 'jq_timePicker'),
        color: ControlType.new('text_field', 'jq_colorPicker'),
        list: ControlType.new('select'),
        db_list: ControlType.new('select')
    }
  end

  def get_javascript_for_group(index)
    js = %Q|
      $(".expandableGroup[idx]").click(function()
      {
        var hidden = $(".property_group[idx]").is(":hidden");       // get the value BEFORE making the slideToggle call.
        $(".property_group[idx]").slideToggle('slow');

                                                                    // At this point,  $(".property_group0").is(":hidden");
                                                                    // ALWAYS RETURNS FALSE

        if (!hidden)                                                // Remember, this is state that the div WAS in.
        {
          $(".expandableGroup[idx]").removeClass('expanded');
          $(".expandableGroup[idx]").addClass('collapsed');
        }
        else
        {
          $(".expandableGroup[idx]").removeClass('collapsed');
          $(".expandableGroup[idx]").addClass('expanded');
        }
      });
    |.gsub('[idx]', index.to_s)

    js
  end
end
