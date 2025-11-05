# Fix for Ruby 3.2+ removing tainted?
class String
  def tainted?; false; end unless method_defined?(:tainted?)
end