require 'colorize'

module SemiColon
  def missing_semicolon_check(line, index, error)
    return unless line.match(/\:+/) && !line.match?(/;+[\s*\W*]*$/) && !line.match?(/[\,(\}+$)\{]/)

    error << "Missing semicolon at the end of line #{index + 1}".colorize(:cyan)
  end
end
