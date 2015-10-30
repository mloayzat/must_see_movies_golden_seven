Rails.application.routes.draw do
#Basic 

 get("/", { :controller => "movies", :action => "movies" })

#Movies:
#create
 get("/movies/new_form", { :controller => "movies", :action => "new_movie_form" })
 get("/create_movie/", { :controller => "movies", :action => "create_movie" })
#view
 get("/movies", { :controller => "movies", :action => "movies" })
 get("/movies/:id", { :controller => "movies", :action => "movie_show" })
#Update:
 get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
 get('/edit_movie/:id', { :controller => 'movies', :action => 'edit_row' })
#Delete
 get("/delete_movie/:id", { :controller => "movies", :action => "delete_movie" })



#Actors:
#create
 get("/actors/new_form", { :controller => "actors", :action => "new_actor_form" })
 get("/create_actor/", { :controller => "actors", :action => "create_actor" })
#view
 get("/actors", { :controller => "actors", :action => "actors" })
 get("/actors/:id", { :controller => "actors", :action => "actor_show" })
#Update:
 get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
 get('/edit_actor/:id', { :controller => 'actors', :action => 'edit_row' })
#Delete
 get("/delete_actor/:id", { :controller => "actors", :action => "delete_actor" })

#Directors:
#create
 get("/directors/new_form", { :controller => "directors", :action => "new_director_form" })
 get("/create_director/", { :controller => "directors", :action => "create_director" })
#view
 get("/directors", { :controller => "directors", :action => "directors" })
 get("/directors/:id", { :controller => "directors", :action => "director_show" })
#Update:
 get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
 get('/edit_director/:id', { :controller => 'directors', :action => 'edit_row' })
#Delete
 get("/delete_director/:id", { :controller => "directors", :action => "delete_director" })

 #Roles:
#create
 get("/roles/new_form", { :controller => "roles", :action => "new_role_form" })
 get("/create_role/", { :controller => "roles", :action => "create_role" })
#view
 get("/roles", { :controller => "roles", :action => "roles" })
 get("/roles/:id", { :controller => "roles", :action => "role_show" })
#Update:
 get('/roles/:id/edit_form', { :controller => 'roles', :action => 'edit_form' })
 get('/edit_role/:id', { :controller => 'roles', :action => 'edit_row' })
#Delete
 get("/delete_role/:id", { :controller => "roles", :action => "delete_role" })

end

  