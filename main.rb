def parse_csv(file_path, sep=",")
  content = File.read(file_path)
  lines = content.split("\n")
  header = lines[0].split(sep)
  body = lines[1..-1]

  data = body.map do |line|
    hash = Hash.new
    vals = line.split(sep)
    vals.each_with_index do |val, i|
      hash[header[i]] = val
    end 
    hash
  end
  return {header: header, data: data}
end

p parse_csv("process.csv")

=begin
{
  header: [header1, header2, header3],
  data: [
    { key1: 'value', key2: 'value', key3: 'value'}
    { key1: 'value', key2: 'value', key3: 'value'}
    { key1: 'value', key2: 'value', key3: 'value'}
  ]
}
=end
