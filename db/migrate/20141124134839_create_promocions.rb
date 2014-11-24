class CreatePromocions < ActiveRecord::Migration
  def change
    create_table :promocions do |t|
      t.references :product, index: true
      t.datetime :startdate
      t.datetime :enddate

      t.timestamps
    end
  end
end
