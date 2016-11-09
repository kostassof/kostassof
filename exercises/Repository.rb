require "csv"
require_relative "patient"

class PatientRepository

  def initialize(csv_file)
    @csv_file = csv_file
    load_data
  end

  def load_data
    patients = []
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file, csv_options) do |row|
    row[:id]    = row[:id].to_i          # Convert column to Fixnum
    row[:cured] = row[:cured] == "true"  # Convert column to boolean
    p row
    patients << Patient.new(row)
  end
  p patients
end

