class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :title
      t.string :city
      t.string :state
      t.string :post_url
      t.integer :salary
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
