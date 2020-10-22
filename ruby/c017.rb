A, B = gets.chomp.split(' ').map(&:to_i)
N = gets.to_i

N.times do
    a, b = gets.chomp.split(' ').map(&:to_i)
    if A < a
        puts "Low"
    elsif A > a
        puts "High"
    elsif A == a
        if B < b
            puts "High"
        else
            puts "Low"
        end
    end
end
