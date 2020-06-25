require 'colorize'

module EmptyComment
  def empty_comment_check(line, index, error)
    matching_condition = %r{\/\*\s*\*\/}
    return unless matching_condition =~ line

    error << "Empty comment detected on line #{index + 1}".colorize(:red)
  end
end
