XC, YC, R_1, R_2 = gets.chomp.split(' ').map(&:to_i)
N = gets.to_i

N.times do
    x, y = gets.chomp.split(' ').map(&:to_i)
    distance = Math.sqrt((x - XC) ** 2 + (y - YC) ** 2)
    if R_1 <= distance && distance <= R_2
        puts 'yes'
    else
        puts 'no'
    end
end
