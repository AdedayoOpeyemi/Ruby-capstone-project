require 'colorize'

module MultipleSpace
  def multiple_space_check(line, index)
    matching_condition = /\S+\s{2,}\S/
    return unless matching_condition =~ line

    "Multiple spaces found on line #{index + 1}".colorize(:yellow)
  end
end
