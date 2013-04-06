class Lexer
  attr_accessor :position, :tokens, :current_indent, :indent_stack
  KEYWORDS = ["class", "def", "if", "while", "true", "false", "nil", "or", "and"]

  def initialize
    @position = 0
    @tokens = []
    @current_indent = 0
    @indent_stack = []
  end

  def tokenize code
    code.chomp!

    while @position < code.size
      chunk = code[@position..-1]

      if identifier = chunk[/\A([a-z]\w*)/, 1]
        tokenize_identifier identifier
      elsif constant = chunk[/\A([A-Z]\w*)/, 1]
        tokenize_constant constant
      elsif number = chunk[/\A([0-9]+)/, 1]
        tokenize_number number
      elsif string = chunk[/\A"(.*?)"/, 1]
        tokenize_string string
      elsif array = chunk[/\A\[(.*?)\]/, 1]
        tokenize_array array
      elsif indent = chunk[/\A\n( *)/m, 1]
        tokenize_indent indent
      elsif operator = chunk[/\A(\|\||&&|==|!=|<=|>=)/, 1]
        tokenize_operator operator
      elsif chunk.match(/\A /)
        remove_whitespace
      else
        tokenize_symbol chunk[0,1]
      end
    end
    finalize_dedent

    @tokens
  end

private
  def tokenize_identifier identifier
    if KEYWORDS.include?(identifier)
      @tokens << [identifier.upcase.to_sym, identifier]
    else
      @tokens << [:IDENTIFIER, identifier]
    end

    @position += identifier.size
  end

  def tokenize_constant constant
    @tokens << [:CONSTANT, constant]

    @position += constant.size
  end

  def tokenize_number number
    @tokens << [:NUMBER, number.to_i]

    @position += number.size
  end

  def tokenize_string string
    @tokens << [:STRING, string]

    @position += string.size + 2
  end

  def tokenize_array array
    @tokens << [:ARRAY, array]

    @position += array.size + 2
  end

  def tokenize_indent indent
    if indent.size > @current_indent
      @current_indent = indent.size
      @indent_stack.push(@current_indent)
      @tokens << [:INDENT, indent.size]
    elsif indent.size == @current_indent
      @tokens << [:NEWLINE, "\n"]
    elsif indent.size < @current_indent
      while indent.size < @current_indent
        @indent_stack.pop
        @current_indent = @indent_stack.last || 0
        @tokens << [:DEDENT, indent.size]
      end
      @tokens << [:NEWLINE, "\n"]
    end

    @position += indent.size + 1
  end

  def tokenize_operator operator
    @tokens << [operator, operator]

    @position += operator.size
  end

  def tokenize_symbol symbol
    @tokens << [symbol, symbol]

    @position += 1
  end

  def remove_whitespace
    @position += 1
  end

  def finalize_dedent
    while indent = @indent_stack.pop
      @tokens << [:DEDENT, @indent_stack.first || 0]
    end
  end
end
