class CreatePolitics < ActiveRecord::Migration[7.0]
  def change
    create_table :politics do |t|
      t.string :name
      t.string :political_side
      t.string :politic_url

      t.timestamps
    end
  end
end
