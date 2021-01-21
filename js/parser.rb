class Parser
  @identifier
  @token

  def read
  
  end

  def read_until(c)
    token = ""
    while peek != c
      token = token + read
    end
  end

  def peek
  end

  def read_keyword() 
    token = read_until()
    if token == "break"
      return "break"
    elsif token == "case"
      return "case"
    elsif token == "catch"
      return "catch"
    elsif token == "class"
      return "class"
    elsif token == "const"
      return "const"
    elsif token == "continue"
      return "continue"
    elsif token == "debugger"
      return "debugger"
    elsif token == "default"
      return "default"
    elsif token == "delete"
      return "delete"
    elsif token == "do"
      return "do"
    elsif token == "else"
      return "else"
    elsif token == "export"
      return "export"
    elsif token == "extends"
      return "extends"
    elsif token == "finally"
      return "finally"
    elsif token == "for"
      return "for"
    elsif token == "function"
      return "function"
    elsif token == "if"
      return "if"
    elsif token == "import"
      return "import"
    elsif token == "in"
      return "in"
    elsif token == "instanceof"
      return "instanceof"
    elsif token == "new"
      return "new"
    elsif token == "return"
      return "return"
    elsif token == "super"
      return "super"
    elsif token == "switch"
      return "switcg"
    elsif token == "this"
      return "this"
    elsif token == "throw"
      return "throw"
    elsif token == "try"
      return "try"
    elsif token == "typeof"
      return "typeof"
    elsif token == "var"
      return "var"
    elsif token == "void"
      return "void"
    elsif token == "while"
      return "while"
    elsif token == "with"
      return "with"
    elsif token == "yield"
      return "yield"
    else
      return false
    end 
  end

  def expression
    op = 
  end
  
  def variable_declaration
    token = read_keyword
    if token == false
       expression
    end  
  end

  def block
    c = read
    if c == "{"
      declaration
      c = read
      if c == "}"
        return
      end
    end
  end

  def class_declaration
    @token = read_keyword
    if @token == "class"
      @token = read_keyword
      if @token == false
        @identifier = @token
        if @token == "extends"
          if @token == false
            @identifier = @token
          end
        end
        block
      end
    end    
  end

  def declaration
  end
  
  def program
      declaration
  end
end
