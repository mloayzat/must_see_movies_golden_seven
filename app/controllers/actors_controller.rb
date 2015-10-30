class ActorsController < ApplicationController

def actors
		@list_of_actors = Actor.all
	end

  def actor_show
    @actor = Actor.find_by({ :id => params[:id] })
  
  end

	def new_actor_form
  end

  def create_actor
  	@actor = Actor.new
  	@actor.dob = params[:dob]
  	@actor.name = params[:name]
  	@actor.bio = params[:bio]
  	@actor.image_url = params[:image_url]
  	
  	@actor.save

  	render("actor_show")

  	end

	

	def delete_actor
  	@actor = Actor.find_by({:id => params[:id] })
  	@actor.destroy

 
  end

def edit_form

  @actor = Actor.find(params[:id])

end

  def edit_row
    @actor = Actor.find(params[:id])
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]
    
    @actor.save
    render("actor_show")
  end

end
