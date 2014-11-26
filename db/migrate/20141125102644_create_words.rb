class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :perkataan
      t.string :susun

      t.timestamps
    end
  end
end
