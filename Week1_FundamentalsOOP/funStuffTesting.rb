require_relative 'fun'

class FunFactory
  include FunStuff
  include FunStuff2
end

FunFactory.new.makeFunHappen2
FunFactory.new.method50
