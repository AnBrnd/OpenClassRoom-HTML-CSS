#prix min 0
min_price = 0
#prix max 100
max_price = 100
#nombre au hasard
computer_price = (min_price..max_price).to_a.sample
# on setup le nombre d'essai de l'user à 1
user_tries = 1
#demander de choisir son prix
puts " Give a number between #{min_price} and #{max_price}"
#plus ou moins
user_price = gets.chomp.to_i
#réponse
while user_price != computer_price
  user_tries = user_tries + 1
  if user_price > computer_price
    puts "it's less"
  elsif user_price < computer_price
    puts "it's more"
  end
  puts "try again"
  user_price = gets.chomp.to_i
end

try_or_try = (user_tries == 1) ? "try" : "tries"
# condition ? true : false

puts "you won !!!! The number was #{computer_price} in #{user_tries} #{try_or_try}"

#étape 4...

#prix juste --> gagné !!
#combien d'étapes
