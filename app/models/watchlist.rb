# == Schema Information
#
# Table name: watchlists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  person_id  :string(255)
#

class Watchlist < ActiveRecord::Base
  belongs_to :person
  has_many :listings, through: :favorites
end
