require 'pry'

class Show < ActiveRecord::Base

    # .highest_rating
    # returns the rating of the TV show with the highest rating
    def self.highest_rating
        # make sure format inside argument is the attribute to compare by
        Show.maximum(:rating)
    end

#     .most_popular_show
#     returns the name of the TV show with the highest rating (FAILED - 1)
    def self.most_popular_show
        Show.select(:name).where(rating: :desc).limit(1)
    end

#     .lowest_rating
#     returns the rating of the TV show with the lowest rating (FAILED - 2)

#   .least_popular_show
#     returns the name of the TV show with the lowest rating (FAILED - 3)
#   .ratings_sum
#     returns the sum of all the ratings of all the tv shows (FAILED - 4)
#   .popular_shows
#     returns an array of all of the shows with a rating above 5 (FAILED - 5)
#   .shows_by_alphabetical_order
#     returns an array of all of the shows, listed in alphabetical order (FAILED - 6)

end