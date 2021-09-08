class ListDirectories
  def initialize
    @directories = []
  end

  def call(path_to_directory)
    list = Dir.glob("#{path_to_directory}*/")

    @directories += list

    list.each do |entry|
      next if entry.include?('spec')
      call(entry)
    end

    @directories
  end
end
