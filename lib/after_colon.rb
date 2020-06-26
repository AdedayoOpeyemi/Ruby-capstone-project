require 'colorize'

module AfterColon
  def after_colon_check(line, index)
    return unless line.match(/[\:\S\s]\:[\:\S]/) && !line.match(/\:\:/)

    "No space after colon on line #{index + 1}".colorize(:cyan)
  end
end
