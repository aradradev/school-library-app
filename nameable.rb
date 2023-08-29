class Nameable

  def initialize(namable)
    @namable = namable
  end

  def correct_name
    raise NotImplementedError
  end
  
end
