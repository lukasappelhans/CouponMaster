class CreateNewspapers < ActiveRecord::Migration
  def change
    create_table :newspapers do |t|
      t.references :product, index: true

      t.timestamps
    end
  end
end
