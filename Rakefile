require "rspec/core/rake_task"
require "./lib/csv_extract_and_sort"

RSpec::Core::RakeTask.new(:spec)

desc "default run test"
task :default => :spec

desc "main"
task :main do
  CsvExtractAndSort.main
end