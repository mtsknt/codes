N, H, W = gets.chomp.split(' ').map(&:to_i)
$pos_y, $pos_x = gets.chomp.split(' ').map{|pos| pos.to_i - 1}
directions = gets.chomp.split('')

table = []

H.times do |i|
    table << []
    W.times do
        table[i] << 0
    end
end

$under = 6
$front = 5
$right = 4

def rotateDice(direction)
    under = $under
    front = $front
    right = $right
    
    if direction == 'D'
        $under = front
        $front = 7 - under
        $pos_y += 1
    elsif direction == 'U'
        $under = 7 - front
        $front = under
        $pos_y -= 1
    elsif direction == 'L'
        $under = 7 - right
        $right = under
        $pos_x -= 1
    elsif direction == 'R'
        $under = right
        $right = 7 - under
        $pos_x += 1
    end 
end

table[$pos_y][$pos_x] = 6

directions.each do |dir|
    rotateDice(dir)
    table[$pos_y][$pos_x] = $under
end

table.each do |row|
    puts row.join(' ')
end
