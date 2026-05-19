class LogLineParser
  def initialize(line)
    @line = line
  end

  def line_split
    line_split = @line.split(':', 2)
  end


  def message
    message = line_split[1].strip
  end

  def log_level
    log_level = line_split[0].downcase.gsub('[','').gsub(']','')
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
