class AddRequestIdToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :request_id, :integer, index: true
  end
end
