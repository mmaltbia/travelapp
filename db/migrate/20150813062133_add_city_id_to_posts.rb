class AddCityIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :city_id2, :integer
  end
end
