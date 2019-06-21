require "csv"

class CsvManager
  class << self
    def get_data()
      total = []
      CSV.foreach("World_Cities_Location_table.csv", quote_char: '"', col_sep: ';', row_sep: :auto, headers: false) do |row|
        city = City.new(row[1], row[2], row[5])
        total.push(city)
      end
      return total
    end
  end
end
