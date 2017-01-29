class OwnershipsController < ApplicationController
  def create
    binding.pry
    @watchlist = current_user.watchlists.new(watchlist_params)
    #@watchlist.save
    binding.pry

    redirect_to watchlists_path
  end

private

  def watchlist_params
    params.require(:watchlist).permit(
      :name,
      :id,
      :person_id,
      watchlist: [:id]
    )
  end
end
end
