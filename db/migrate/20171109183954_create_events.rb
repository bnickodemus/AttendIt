class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :author
      t.string :title
      t.datetime :date
      t.text :content

      t.timestamps
    end
  end
end
