ST = gets.chomp.split(' ').map(&:to_i)
N = gets.to_i
no_evol = true

N.times do 
    name, *status = gets.chomp.split(' ')
    st_req = Array.new
    flag = Array.new(3, false)
    
    3.times do
        st_req << status.shift(2).map(&:to_i)
    end
    
    3.times do |i|
        flag[i] = true if (st_req[i][0] <= ST[i]) && (ST[i] <= st_req[i][1])
    end
    
    
    unless flag.include?(false)
        puts name
        if no_evol == true
            no_evol = false
        end
    end
end

puts 'no evolution' no_evo == true
