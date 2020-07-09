def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  card 
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total 
end

def hit?(total)
 prompt_user
 input = get_user_input
 if input == "s"
   total 
 elsif input == "h"
 card1 = deal_card
 total += card1
 display_card_total(total) 
 total 
 else 
   invalid_command
   prompt_user
   get_user_input
end
end 

def invalid_command
  puts "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total <= 21 do 
  total = hit?(total)
end
end_game(total)
end
    
