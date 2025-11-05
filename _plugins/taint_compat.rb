# Compatibility patch for Ruby 3.2+ (Liquid still calls tainted?)
class Object
  def tainted?
    false
  end unless method_defined?(:tainted?)
end