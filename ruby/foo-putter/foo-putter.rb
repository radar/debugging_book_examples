module Foo
  FOO = 1
  class Putter
    def self.put
      puts FOO
    end
  end
end

Foo::Putter.put