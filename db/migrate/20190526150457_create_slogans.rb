class CreateSlogans < ActiveRecord::Migration[5.2]
  def change
    create_table :slogans do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :slogan

      t.timestamps
    end
  end
end
