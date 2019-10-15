class Player

attr_accessor :name, :life_point

def initialize(name_to_save) 
	@name = name_to_save  
	@life_point = 10
end

 def show_state
	puts "#{@name} à #{@life_point} points de vie." 
 end





 def get_damage(damage)

	@life_point = @life_point - damage 
   if @life_point >= 0
	puts "#{@name} subit une attaque qui lui enleve #{damage} point de vie, il lui reste plus que #{@life_point} points de vie." 
   else 
	puts "he's dead"
	end
	end



def compute_damage
 return rand(1..6)
end

 def attacks(player)

puts "#{name} attacks #{player.name}"  
player.get_damage(compute_damage)
 end


end



