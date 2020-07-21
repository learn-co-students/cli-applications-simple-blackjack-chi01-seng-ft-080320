require "pry"

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  random_number = rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def hit?(number)
  total = number
  prompt_user
  decision = get_user_input
  if(decision == 'h')
    new_card= deal_card
    total += new_card
  end 
  if(decision != 'h' && decision != 's')
    invalid_command
    prompt_user
    decision = get_user_input
  end 
  total
end

def invalid_command
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
  end 
end_game(total)
end
    
