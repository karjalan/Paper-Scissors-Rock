psr = {"paper" => 1,
"scissors" => 2,
"rock" => 3}

puts "We're playing paper, scissors, rock, choose one."
user_psr = gets.chomp.downcase

psr.each_key do |a|
    puts "You chose #{a.capitalize}" if user_psr == a
end

rand_psr = rand(1..3)

psr.each do |x,y| 
    if rand_psr == y
        puts "You're opponent chose #{x.capitalize}."         else
        nil
    end
end
