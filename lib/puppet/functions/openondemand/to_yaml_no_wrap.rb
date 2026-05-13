require 'yaml'

Puppet::Functions.create_function(:'openondemand::to_yaml_no_wrap') do
  dispatch :to_yaml do
    param 'Any', :data
  end

  def to_yaml(data)
    YAML.dump(data, line_width: -1)
  end
end
