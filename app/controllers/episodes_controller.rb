class EpisodesController < ApplicationController
  def index
    # @episodes = Episode.all.order('episodes.number DESC')
    @episodes = Episode.last(10)
    @top5 = Timestamp.order(cached_votes_total: :desc).first(5)
    @randoms = Timestamp.order("RANDOM()").limit(5)
  end
end
