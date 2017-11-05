class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :uid
      t.string :image_url
      t.string :token
      t.string :expires_at

      t.timestamps
    end
  end
end
