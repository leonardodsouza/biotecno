class CreatePaginas < ActiveRecord::Migration[5.1]
  def change
    create_table :paginas do |t|
      t.string :titulo
      t.text :texto

      t.timestamps
    end
  end
end
