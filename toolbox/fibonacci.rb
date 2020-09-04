def calc_fib(n)
    list=[0,1]

    (2..n).each do |i|
        list[i]=list[i-1]+list[i-2]
    end
    return list[n]
end

if __FILE__ == $0
    n = gets.to_i
    puts "#{calc_fib(n)}"
end