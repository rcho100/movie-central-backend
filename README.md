# Movie Central Backend

Movie Central is a web app that allows users to browse through currently popular movies and also through currently top rated movies. Users can also create an account to add movies to their own watchlist and grow their collection.

This repo contains the Rails API backend portion of the web application. Data is also retrieved in the Rails backend from the TMDB (The Movie DB) API for current up to date lists on movies. https://www.themoviedb.org/documentation/api

For the repo to the React & Redux frontend portion of this application, please go to: https://github.com/rcho100/movie-central-frontend

## Installation & Usage

Clone this repo and run bundle install to load the Ruby gems and dependencies. Have a Postgres server running. Then run rails db:create to create the database and rails db:migrate to migrate the migration files. Then run rails s to start the server for the backend.

Please see the above link for the frontend portion of this app and clone down the repo. Run npm install to install and npm start to start the server for the frontend.

## Built With

For the Frontend:

- React
- Redux
- React Router
- React-Bootsrap
- CSS

For the Backend:

- Ruby
- Rails API
- Bcrypt
- Fast JSON API
- Session Cookies
- PostgreSQL

## Contributing

Issues and pull requests are welcome at https://github.com/rcho100/movie-central-backend.