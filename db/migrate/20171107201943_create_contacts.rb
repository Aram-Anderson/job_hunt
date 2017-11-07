class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :image_url
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end