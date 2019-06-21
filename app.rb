require_relative "city"
require "./manager/csv_manager"
require "./manager/file_manager"

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
