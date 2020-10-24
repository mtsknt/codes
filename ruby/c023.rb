c_num = gets.chomp.split(' ').map(&:to_i)
N = gets.to_i

N.times do
    i_num = gets.chomp.split(' ').map(&:to_i)
    p 6 - c_num.difference(i_num).size
end
