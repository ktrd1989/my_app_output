class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.text :review
      t.references :report, foreign_key: true
      t.float :rates

      t.timestamps
    end
  end
end
