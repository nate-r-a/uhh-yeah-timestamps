class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
    @ep = Episode.first
    @timestamps = Timestamp.all
  end
end
