N, R = gets.chomp.split(' ').map(&:to_i)
minimum = 2 * R

N.times do |i|
    x, y, z  = gets.chomp.split(' ').map(&:to_i)
    
    if x >= minimum && y >= minimum && z >= minimum 
        puts (i + 1)
    end
end
