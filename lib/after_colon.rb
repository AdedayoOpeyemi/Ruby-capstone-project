require 'colorize'

module AfterColon
  def after_colon_check(line, index, error)
    return unless line.match(/[\:\S\s]\:[\:\S]/) && !line.match(/\:\:/)

    error << "No space after colon on line #{index + 1}".colorize(:cyan)
  end
end
