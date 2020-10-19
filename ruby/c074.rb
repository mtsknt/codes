H, W, X = gets.chomp.split(' ').map(&:to_i)
str = Array.new

H.times do
    str << gets.chomp.split('')
end

str.flatten!

until str == []
    puts str.shift(X).join
end
