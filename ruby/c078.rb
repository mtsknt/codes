n, low_price, high_price = gets.chomp.split(' ').map(&:to_i)
stock = 0
profit = 0

n.times do |i|
    price = gets.to_i
    if i+1 == n
        profit += stock * price if stock > 0
    else
        if price <= low_price
            stock += 1
            profit -= price
        elsif price >= high_price
            profit += (stock * price)
            stock = 0
        end
    end
end

p profit
