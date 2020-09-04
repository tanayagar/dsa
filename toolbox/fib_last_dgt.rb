#!/usr/bin/env ruby
# by Andronik Ordian
def fib_last_digit(n)
    list=[0,1]

    (2..n).each do |i|
        list[i]=(list[i-1]+list[i-2])%10
    end
    return list[n]
  end
  
  if __FILE__ == $0
    n = gets.to_i
    puts "#{fib_last_digit(n)}"
  end