#!/usr/bin/env ruby

def max_pairwise_product(a)
    #naive implementation
    result = 0
    n = a.size
    (0..n-1).each do |i|
        (i+1..n-1).each do |j|
            if a[i]*a[j] > result
                result = a[i]*a[j]
            end
        end
    end
    result
end

def max_pairwise_product_fast(a)
    m1=0
    m1i=0
    m2=0
    n = a.size
    (0..n-1).each do |i|
        if a[i]>m1
            m1=a[i]
            m1i=i
        end
    end
    (0..n-1).each do |i|
        if a[i]>m2 && i!=m1i
            m2=a[i]
        end
    end
    # puts "#{m1} #{m2} #{m1i}"
    m1*m2
end

def stress_test
    while true
        len= rand(1..10000)
        a=[len]
        (0..len-1).each do |i|
            a.push(rand(100000))
        end
        a=a[1..len]
        if max_pairwise_product(a) == max_pairwise_product_fast(a)
            puts "OK"
        else
            puts "#{a},#{max_pairwise_product(a)} , #{max_pairwise_product_fast(a)}"
            break;
        end
    end
end

if __FILE__ == $0
    data = STDIN.read.split().map(&:to_i)
    n = data[0]
    a = data[1..n]
    puts "#{max_pairwise_product_fast(a)}"
end