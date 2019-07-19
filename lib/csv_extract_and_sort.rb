require_relative "city"
require "./lib/manager/csv_manager"
require "./lib/manager/file_manager"

module CsvExtractAndSort
  def self.main
    cities = CsvManager.get_data()

    cities = cities.sort_by { |c| [ c.country, -c.altitude ] }
    aux = ""
    final = []
    cities.map{ |c|
      if aux != c.country
        aux = c.country
        final.push(c)
      end
    }
    final = final.sort_by { |c| [c.altitude] }.reverse!
    final.map { |c| puts c.print}
    FileManager.instance.write_array(final)
  end
end
