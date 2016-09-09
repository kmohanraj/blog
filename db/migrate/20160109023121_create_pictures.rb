class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.date :date
      t.text :desc

      t.timestamps
    end
  end
end
