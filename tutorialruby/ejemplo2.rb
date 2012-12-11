#!/usr/bin/env ruby
require "test/unit"

def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end

def factorial(n)
    n if n<=1
    n * factorial(n-1)
end

class TestsVarios < Test::Unit::TestCase
   
  def test_simple
    
    
    assert_equal("Hola mundo", "Hola" +" mundo" )
    assert_equal(5*4*3*2*1, fact(5) )
    
   # assert_equal(5*4*3*2*1, factorial(5) ) da error    
  end
  
  def test_lambdas
    
    lambda1 = lambda{ |x,y,z| x * y * z}
    lambda2 = ->(x,y,z) { x+y+z} #debe estar el parentesis pegado   
    assert_equal(6,lambda1.call(1,2,3))
    assert_equal(6,lambda2.call(1,2,3))
    assert_equal(6,lambda2[1,2,3])
    assert_equal(6,lambda2.(1,2,3))
    
  end
 
end