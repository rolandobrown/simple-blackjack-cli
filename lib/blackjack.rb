def welcome
  puts "Welcome to Wu-Tang Blackjack!"
end

def deal_card
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def invalid_command
  puts "That's not a valid option. Type 'h' to hit or 's' to stay."
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  initial_score = deal_card + deal_card
  display_card_total(initial_score)
  initial_score
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  card_total += deal_card if input == 'h'
  card_total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome

  score = initial_round

  until score > 21
    score = hit?(score)
    display_card_total(score)
  end

  end_game(score)
end
