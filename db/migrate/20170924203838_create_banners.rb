class CreateBanners < ActiveRecord::Migration[5.1]
  def change
    create_table :banners do |t|
      t.string :titulo
      t.text :descricao

      t.timestamps
    end
  end
end
