require 'yaml'

yaml = YAML.load_file('spec.yml')


yaml['components']['schemas'].each do |name, schema|
  content = YAML.dump(schema)
  File.write(File.join('Sources', name + '.swift'), content)


  # puts name




end

# puts yaml
