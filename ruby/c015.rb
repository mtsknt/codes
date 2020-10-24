N = gets.to_i
point = 0
tri = [3, 13, 23, 30, 31]
fif = [5, 15, 25]

N.times do 
    day, price = gets.chomp.split(' ').map(&:to_i)
    if tri.include?(day)
        point += (price * 0.03).floor
    elsif fif.include?(day)
        point += (price * 0.05).floor
    else
        point += (price * 0.01).floor
    end
end

p point
