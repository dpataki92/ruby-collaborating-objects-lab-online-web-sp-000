class MP3Importer

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3")
  end

  def import
    @files.each {|file| Song.new_by_filename(file)}
  end

end
