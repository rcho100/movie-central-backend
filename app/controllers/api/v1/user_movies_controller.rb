class Api::V1::UserMoviesController < ApplicationController
    def create
        movie = Movie.find_or_create_by(
            id_from_api: user_movies_params['id'],
            title: user_movies_params['title'],
            backdrop_path: user_movies_params['backdrop_path'],
            poster_path: user_movies_params['poster_path'],
            overview: user_movies_params['overview'],
            tagline: user_movies_params['tagline'],
            release_date: user_movies_params['release_date'],
            runtime: user_movies_params['runtime']
        )    
    end

    private
    def user_movies_params
        params.require(:movDetails).permit(:id, :title, :backdrop_path, :poster_path, :overview, :tagline, :release_date, :runtime)
    end
end
