class PokemonsController < ApplicationController
	before_filter :authenticate_trainer!

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end

	def damage
		puts params
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		if @pokemon.health <= 0
			Pokemon.find(params[:id]).destroy
		end
		redirect_to action: 'trainers#show'
	end
end
