class AddIndexToFavorites < ActiveRecord::Migration
  def change
    add_index :favorites, [ :watchlist_id, :listing_id ], unique: true
  end
end
