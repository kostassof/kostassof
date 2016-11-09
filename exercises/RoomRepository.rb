require "csv"

class RoomRepository

  def initialize(csv_file)
    @csv_file = csv_file

    load_data
  end

  def load_data
    rooms = []
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(csv_file, csv_options) do |row|
    row[:id]    = row[:id].to_i          # Convert column to Fixnum
    row[:capacity] = row[:capacity]
    p row[:id]
  end
end

p patients
