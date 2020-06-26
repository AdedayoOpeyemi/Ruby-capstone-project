require 'colorize'

module SemiColon
  def missing_semicolon_check(line, index)
    return unless line.match(/\:+/) && !line.match?(/;+[\s*\W*]*$/) && !line.match?(/[\,(\}+$)\{]/)

    "Missing semicolon on line #{index + 1}".colorize(:cyan)
  end
end
