def parse_csv(file_path)
  content = File.read(file_path)
  lines = content.split("\n")
  header = lines[0].split(',')
  body = lines[1..-1]

  data = body.map do |line|
    hash = Hash.new
    vals = line.split(",")
    vals.each_with_index do |val, i|
      hash[header[i]] = val
    end 
    hash
  end
  return {header: header, data: data}
end

p parse_csv("process.csv")