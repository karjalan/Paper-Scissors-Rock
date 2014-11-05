psr = ["paper",
"scissors",
"rock"]

user_psr = ""

psr_choose = Proc.new {psr.each do |a|
    if user_psr == a
        puts "You chose #{a.capitalize}"
        puts "You're opponent chose #{psr.sample.capitalize}."
end
end
if
    user_psr == "stop"
    break 
end}


loop {   
puts "We're playing paper, scissors, rock, choose one or 'stop' to stop"
user_psr = gets.chomp.downcase

psr_choose.call}
