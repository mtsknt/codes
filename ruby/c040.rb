N = gets.to_i
shorter = Array.new
taller = Array.new

N. times do 
    flag, height = gets.chomp.split(' ')
    if flag == 'le'
        shorter << height.to_f
    else
        taller << height.to_f
    end
end

puts "#{taller.max} #{shorter.min}"

