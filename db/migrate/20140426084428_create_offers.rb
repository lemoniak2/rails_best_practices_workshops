class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :user, index: true
      t.text :message

      t.timestamps
    end
  end
end
