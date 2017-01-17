class WatchlistsController < ApplicationController
  def index
    @watchlists = Watchlist.all
  end

  def new
    @watchlist = Watchlist.new
  end

  def create
    binding.pry
    @watchlist = Watchlist.new(params.require(:watchlist).permit(:name))
    @watchlist.save
    redirect_to watchlists_path
  end

  def show
    @watchlist = Watchlist.find(params[:id])
    binding.pry
    @listings = Listing.all
  end
end
