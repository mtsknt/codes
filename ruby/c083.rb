N, R = gets.chomp.split(' ').map(&:to_i)
sales = Array.new

N.times do
    sales << gets.to_i
end

width = sales.max / R

N.times do |i|
    answer = Array.new
    answer << "#{i+1}:"
    answer << '*' * (sales[i] / R)
    answer << '.' * (width - sales[i] / R)
    puts answer.join
end
