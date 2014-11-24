class CreateAbsencePeriods < ActiveRecord::Migration
  def change
    create_table :absence_periods do |t|
      t.references :user, index: true

      t.datetime :startdate
      t.datetime :enddate
      t.timestamps
    end
  end
end
