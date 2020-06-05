class Api::V1::MoviesController < ApplicationController
    MOVIE_API_KEY = ENV['MOVIE_API_KEY']

    def popular
        response = RestClient.get("https://api.themoviedb.org/3/movie/popular?api_key=#{MOVIE_API_KEY}&language=en-US")
        parsed_response = JSON.parse(response.body)

        render json: parsed_response['results'], status: :ok
    end

end