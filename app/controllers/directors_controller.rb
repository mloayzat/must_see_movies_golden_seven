class DirectorsController < ApplicationController
	def directors
		@list_of_directors = Director.all
	end

  def director_show
    @director = Director.find_by({ :id => params[:id] })
  
  end

	def new_director_form
  end

  def create_director
  	@director = Director.new
  	@director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
  	@director.save

  	render("director_show")

  	end

	

	def delete_director
  	@director = Director.find_by({:id => params[:id] })
  	@director.destroy

 
  end

def edit_form

  @director = Director.find(params[:id])

end

  def edit_row
    @director = Director.find(params[:id])
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
    @director.save

    render("director_show")
  end

end
