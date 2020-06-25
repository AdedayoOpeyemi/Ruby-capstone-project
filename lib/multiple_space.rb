require 'colorize'

module MultipleSpace
  def multiple_space_check(line, index, error)
    matching_condition = /\S+\s{2,}\S/
    return unless matching_condition =~ line

    error << "Multiple spaces found on line #{index + 1}".colorize(:yellow)
  end
end
