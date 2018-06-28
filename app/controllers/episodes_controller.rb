class EpisodesController < ApplicationController
  def index
    @episodes = Episode.order(number: :desc).first(5)
    @top5 = Timestamp.order(cached_votes_total: :desc).first(5)
    @randoms = Timestamp.order("RANDOM()").limit(5)
  end
end
