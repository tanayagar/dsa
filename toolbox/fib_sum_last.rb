def fib_last_digit(n)
    list=[0,1]

    (2..n).each do |i|
        list[i]=(list[i-1]+list[i-2])%10
    end
    return list[n]
  end

def fib_sum_last_digit(n)
    s=fib_last_digit(n+2)-1
    return s%10
  end
  
  if __FILE__ == $0
    n = STDIN.read.to_i
    puts"#{fib_sum_last_digit(n)}"
    end