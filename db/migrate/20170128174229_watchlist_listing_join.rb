class WatchlistListingJoin < ActiveRecord::Migration
  def self.up
    create_table :favorites do |t|
      t.belongs_to :watchlist
      t.belongs_to :listing

      t.timestamps
    end
  end

  def self.down
    drop_table :favorites
  end
end
