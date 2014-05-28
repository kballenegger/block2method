require 'block2method/version'

# Converts a block to an unbound method. This is useful for more binding
# a block to an object, so that it can be executed with a different `self`.
#
#   method = Block2Method do
#     puts self[:hello]
#   end
#   method.bind({hello: 'World!'}).call
#
def Block2Method(&block)
  Block2Method.convert(&block)
end

module Block2Method
  def self.convert(&block)
    name = Thread.current.object_id.to_s.to_sym
    define_method(name, &block)
    block = instance_method(name)
    remove_method(name)
    block
  end
end
