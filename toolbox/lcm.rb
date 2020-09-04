#!/usr/bin/env ruby
# by Andronik Ordian

def gcd(a, b)
    rem=1
    while rem>0
        rem=b-(a*(b/a))
        b=a
        a=rem
    end
    return b
  end
  
  def lcm(a, b)
    return (a*b)/gcd(a,b)
  end
  
  if __FILE__ == $0
    a, b = STDIN.read.split().map(&:to_i)
    puts "#{lcm(a, b)}"
  end
  