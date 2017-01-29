class WatchlistsController < ApplicationController
  def index
    @watchlists = current_user.watchlists
  end

  def create
    if params['watchlist']['name'] != ""
      @watchlist = current_user.watchlists.create(
        name: params['watchlist']['name']
      )

      @favorite = Favorites.create(
        watchlist_id: @watchlist.id,
        listing_id: params['watchlist']['favorites']['listing_id']
      )

      @watchlist.save
      @favorite.save
    else
      @favorite = Favorites.create(
        watchlist_id: params['watchlist']['favorites']['watchlist_id'],
        listing_id: params['watchlist']['favorites']['listing_id']
      )

      @favorite.save
    end

    redirect_to watchlists_path
  end

  def show
    @watchlist = Watchlist.find(params[:id])
    @listings = Listing.joins(:favorites).where({'favorites.watchlist_id' => @watchlist.id})
  end
end
