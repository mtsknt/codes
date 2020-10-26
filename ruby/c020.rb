M, P, Q = gets.chomp.split(' ').map(&:to_i)

p M * (100 - P) / 100.0 * (100 - Q) / 100.0
