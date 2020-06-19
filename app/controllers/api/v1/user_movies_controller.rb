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
        if current_user.movies.find{|user_movie| user_movie.id_from_api == movie.id_from_api}
            resp = {
                already_in: 'This movie is already in your Watchlist'
            }
            render json: resp, status: :ok
        else
            current_user.movies << movie
            options = {
                include: [:movies]
            }

            render json: UserSerializer.new(current_user, options), status: :ok
        end    
    end

    private
    def user_movies_params
        params.require(:movDetails).permit(:id, :title, :backdrop_path, :poster_path, :overview, :tagline, :release_date, :runtime)
    end
end
