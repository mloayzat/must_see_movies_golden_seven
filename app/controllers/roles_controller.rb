class RolesController < ApplicationController
	def roles
		@list_of_roles = Role.all
	end

  def role_show
    @role = Role.find_by({ :id => params[:id] })
  
  end

	def new_role_form
  end

  def create_role
  	@role = Role.new
  	@role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]
  	@role.save

  	render("role_show")

  	end

	

	def delete_role
  	@role = Role.find_by({:id => params[:id] })
  	@role.destroy

 
  end

def edit_form

  @role = Role.find(params[:id])

end

  def edit_row
    @role = Role.find(params[:id])
    @role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]
    @role.save

    render("role_show")
  end

end
