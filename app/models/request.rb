class Request < ActiveRecord::Base
  belongs_to :user
  has_many :offers

  def offers_count
    self.offers.count
  end
end
