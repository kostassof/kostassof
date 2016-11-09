require "csv"
CSV.foreach("csv_file.csv") do |row|
  p row
end
