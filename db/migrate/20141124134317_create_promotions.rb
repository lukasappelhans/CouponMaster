class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.references :product, index: true
      t.datetime :startdate
      t.datetime :enddate

      t.timestamps
    end
  end
end
