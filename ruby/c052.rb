H, W = gets.chomp.split(' ').map(&:to_i)
dy, dx = gets.chomp.split(' ').map(&:to_i)

dx *= (-1) if dx < 0
dy *= (-1) if dy < 0

xx = H * dx
yy = W * dy

puts xx + yy - dx * dy
