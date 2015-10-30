class MoviesController < ApplicationController
	def movies
		@list_of_movies = Movie.all
	end

  def movie_show
    @movie = Movie.find_by({ :id => params[:id] })
  
  end

	def new_movie_form
  end

  def create_movie
  	@movie = Movie.new
  	@movie.title = params[:title]
  	@movie.year = params[:year]
  	@movie.duration = params[:duration]
  	@movie.description = params[:description]
  	@movie.image_url = params[:image_url]
  	@movie.director_id = params[:director_id]

  	@movie.save

  	render("movie_show")

  	end

	

	def delete_movie
  	p = Movie.find_by({:id => params[:id] })
  	@title = p.title
  	p.destroy

 
  end

def edit_form

  @movie = Movie.find(params[:id])

end

  def edit_row
    @movie = Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    @movie.save
    render("movie_show")
  end

end
