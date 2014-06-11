module ThenElse
  def then 
    yield if !!self 
    self
  end

  def otherwise 
    yield if !self
    self
  end

  def else
    yield if !self
    self
  end
end

Object.__send__(:include, ThenElse)
