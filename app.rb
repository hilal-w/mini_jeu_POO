require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "Voici l'état de chaque joueur :"
puts
puts "#{player1.show_state}" 
puts "#{player2.show_state}" 

puts "Passons à la phase d'attaque :"
puts
while player1.life_point>0 && player2.life_point>0
 player2.attacks(player1)
break if player1.life_point <= 0 || player2.life_point <= 0 
 player1.attacks(player2)


end



binding.pry
