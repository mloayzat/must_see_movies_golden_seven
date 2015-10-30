class ActorsController < ApplicationController

	def actors
		@list_of_actors = Actor.all

	end

end