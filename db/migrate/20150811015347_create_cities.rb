class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :longitude
      t.string :latitude
      t.string :image
      t.string :bg_img
      t.string :banner_image
      t.timestamps null: false
    end
  end
end
