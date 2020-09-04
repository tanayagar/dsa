#!/usr/bin/env ruby
# by Andronik Ordian
def fib(n)
    list=[0,1]

    (2..n).each do |i|
        list[i]=list[i-1]+list[i-2]
    end
    return list[n]
end

def fib_huge(n, m)
    #pisano
    s=[0,1]
    prev=0
    curr=1
    e=(m*m)
    (2..e).each do |i|
        s[i]=fib(i)%m
        prev=s[i-1]
        curr=s[i]
        if prev==0 && curr==1
            # s.delete_at(i)
            # s.delete_at(i-1)
            s.pop
            s.pop
            break
        end
    end

    #fib modulo
    l=s.length
    idx=n - (n/l)*l
    return s[idx]
  end
  
  if __FILE__ == $0
    a, b = STDIN.read.split().map(&:to_i)
    puts "#{fib_huge(a, b)}"
  end