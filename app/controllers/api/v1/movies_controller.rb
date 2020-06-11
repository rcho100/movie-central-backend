class Api::V1::MoviesController < ApplicationController
    MOVIE_API_KEY = ENV['MOVIE_API_KEY']

    def popular
        response = RestClient.get("https://api.themoviedb.org/3/movie/popular?api_key=#{MOVIE_API_KEY}&language=en-US")
        parsed_response = JSON.parse(response.body)

        render json: parsed_response['results'], status: :ok
    end

    def top_rated
        response = RestClient.get("https://api.themoviedb.org/3/movie/top_rated?api_key=#{MOVIE_API_KEY}&language=en-US")
        parsed_response = JSON.parse(response)
    
        render json: parsed_response["results"]
    end 

    def show
        id = params[:id]
        response = RestClient.get("https://api.themoviedb.org/3/movie/#{id}?api_key=#{MOVIE_API_KEY}&language=en-US")
        parsed_response = JSON.parse(response.body)

        render json: parsed_response, status: :ok
    end
end