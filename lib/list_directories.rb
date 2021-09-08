class ListDirectories
  def initialize(system_directory_lister: Dir)
    @system_directory_lister = system_directory_lister
    @directories = []
  end

  def call(path_to_directory)
    list = @system_directory_lister.glob("#{path_to_directory}*/")
    @directories += list

    list.each do |entry|
      next if entry.include?('spec')

      call(entry)
    end

    @directories
  end

  private
  attr_reader :system_directory_lister, :directories
end
