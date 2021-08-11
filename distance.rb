require 'csv'

def calc_distance(file_csv)
  sum_distance = 0
  CSV.foreach(file_csv, headers: true, col_sep: ",") do |row|
    sum_distance += row["distance"].to_i
  end 
  p "Sum of distances : #{sum_distance}"
end

calc_distance("distance.csv")