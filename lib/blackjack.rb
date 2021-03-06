def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  # source: https://www.lauraleeflores.com/blog/what-is-the-difference-between-chomp-and-strip-in-ruby
  user_input = gets.strip.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  c_one = deal_card
  c_two = deal_card
  card_total = c_one + c_two
  display_card_total(card_total)

  return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input

  if user_input == "h"
    card_total += deal_card
  elsif user_input == "s"
    card_total
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sleep 2
  card_total = initial_round

  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end

  end_game(card_total)
end
