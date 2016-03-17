class PokemonController < ApplicationController
	def capture
		@pokemon = Pokemon.new
		@pokemon.trainer_id = current_trainer()
		@pokemon.save
		redirect_to root_path
	end
end
