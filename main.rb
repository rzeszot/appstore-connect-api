require 'yaml'

yaml = YAML.load_file('spec.yml')

def generate_string_enum_case(item)
  item.downcase
end

def generate_string_enum(schema, name)
  result = ""

  result << "import Foundation\n"
  result << "\n"
  result << "enum #{name}: String, Codable {\n"
  schema['enum'].each do |item|
    result << "    case #{generate_string_enum_case(item)} = \"#{item}\"\n"
  end
  result << "}\n"

  result
end

def generate(schema, name)
  if schema['type'] == 'string' && schema['enum']
    generate_string_enum(schema, name)
  else
    puts name
    puts schema
    puts "---"
    YAML.dump(schema)
  end
end


yaml['components']['schemas'].each do |name, schema|
  File.write(File.join('Sources', name + '.swift'), generate(schema, name))
end
