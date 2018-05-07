class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all.order('episodes.number DESC')
    # @timestamps = Timestamp.all
  end
end
