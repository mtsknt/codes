X, P = gets.chomp.split(' ').map(&:to_i)
currentPrice = X
discount = 1 - (P / 100.0)
paid = 0

until currentPrice == 0
    paid += currentPrice
    currentPrice = (currentPrice * discount).floor
end

p paid
