class Movie < ActiveRecord::Base
  #### Part 1 ####
  # Find other movies with the same director,
  # excluding the current movie.
  def others_by_same_director
    return Movie.none if director.blank?

    Movie.where(director: director).where.not(id: id)
  end
end
