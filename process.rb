require 'csv'

def sum_all_ages(file_csv)
  sum_age = 0
  CSV.foreach(file_csv, headers: true, col_sep: ",") do |row|
    sum_age += row["age"].to_i
  end 
  p "Sum of ages : #{sum_age}"
end

sum_all_ages("process.csv")

=begin
  row is like this
  #<CSV::Row "first_name":"Tudor" "last_name":"Vidor" "age":"10" "town":"Hapci">
  #<CSV::Row "first_name":"Szundi" "last_name":"Morgo" "age":"7" "town":"Szende">
  #<CSV::Row "first_name":"Kuka" "last_name":"Hofeherke" "age":"100" "town":"Kiralyno">
  #<CSV::Row "first_name":"Boszorkany" "last_name":"Herceg" "age":"9" "town":"Meselo">
  
  To access all first_name
  row["first_name"]
=end