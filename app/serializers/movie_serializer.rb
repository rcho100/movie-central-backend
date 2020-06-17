class MovieSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id_from_api, :poster_path, :backdrop_path, :overview, :release_date, :runtime, :tagline, :title
end
