class PokemonsController < ApplicationController
	before_filter :authenticate_trainer!

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		puts @pokemon.health
		@pokemon.health -= 10
		@pokemon.save
		if @pokemon.health <= 0
			Pokemon.find(params[:id]).destroy
		end
		redirect_to controller: 'trainers', action: 'show', id: @pokemon.trainer_id
	end

	def new 
		@pokemon = Pokemon.new
	end

	def create 
		@pokemon = Pokemon.create user_params
		@pokemon.trainer_id = current_trainer.id
		@pokemon.health = 100
		@pokemon.level = 1
		if @pokemon.save
			redirect_to controller: 'trainers', action: 'show', id: @pokemon.trainer_id
		else 
			redirect_to '/pokemons/new'
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end

	private
	def user_params
		params.require(:pokemon).permit(:name)
	end
end
