psr = [:paper,
:scissors,
:rock,
:stop]

RULES = {
  :paper => {:paper => :draw, :scissors => :lose, :rock => :win},
  :scissors => {:paper => :win, :scissors => :draw, :rock => :lose},
  :rock => {:paper => :lose, :scissors => :win, :rock => :draw}
}

def game(x,y)
  RULES[x][y]
end

user_psr = ""

psr_choose = Proc.new {
opponent = [:paper,:scissors,:rock].sample
outcome = game(user_psr,opponent)

psr.each do |a|
  if user_psr == a
    puts "You chose #{user_psr.to_s.capitalize}. You're opponent chose #{opponent.to_s.capitalize}."
    puts "You #{outcome.to_s.capitalize}!"
end
end
}


loop {   
puts "We're playing paper, scissors, rock, choose one or 'stop' to stop"
user_psr = gets.chomp.downcase.to_sym
psr_choose.call
}
