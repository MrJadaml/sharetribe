# == Schema Information
#
# Table name: favorites
#
#  id           :integer          not null, primary key
#  watchlist_id :integer
#  listing_id   :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_favorites_on_watchlist_id_and_listing_id  (watchlist_id,listing_id) UNIQUE
#

class Favorite < ActiveRecord::Base
  belongs_to :watchlist
  belongs_to :listing

  validates_uniqueness_of :listing_id, scope: :watchlist_id
end
