class FileManager
  def initialize
    @file = File.open("output/output.txt", "w")
  end

  @@instance = FileManager.new

  def self.instance
    return @@instance
  end

  def write_array(array)
    array.map { |c| @file.puts c.print}
    @file.close
  end

  def close
    @file.close
  end

  private_class_method :new
end
