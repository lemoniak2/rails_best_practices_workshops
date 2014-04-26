class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.references :user
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
