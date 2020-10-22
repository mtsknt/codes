N = gets.to_i
indicator = [0, 0, 0, 1000000]
N.times do |i|
    prices = gets.chomp.split(' ').map(&:to_i)
    
    if i == 0
        indicator[0] = prices[0]
    elsif i == (N - 1)
        indicator[1] = prices[1]
    end
    
    if indicator[2] < prices[2]
        indicator[2] = prices[2]
    end
    
    if indicator[3] > prices[3]
        indicator[3] = prices[3]
    end
    
end

puts indicator.join(' ')
