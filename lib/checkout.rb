class Checkout
  def scan(item)
    raise NotImplementedError
  end

  def total
    raise NotImplementedError
  end
end
