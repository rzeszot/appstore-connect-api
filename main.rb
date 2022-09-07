require 'yaml'

yaml = YAML.load_file('spec.yml')

def generate(schema)
  YAML.dump(schema)
end


yaml['components']['schemas'].each do |name, schema|
  File.write(File.join('Sources', name + '.swift'), generate(schema))
end
