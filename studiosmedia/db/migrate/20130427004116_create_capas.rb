class CreateCapas < ActiveRecord::Migration
  def change
    create_table :capas do |t|
      t.text :content

      t.timestamps
    end
  end
end
