N = gets.to_i
table = Array.new

N.times do
    table << gets.chomp.split('').map(&:to_i)
end

puts table.transpose.map{ |column| (column.count(1).odd?) ? 1 : 0 }.join()
