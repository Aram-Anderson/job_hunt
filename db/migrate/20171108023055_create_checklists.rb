class CreateChecklists < ActiveRecord::Migration[5.1]
  def change
    create_table :checklists do |t|
      t.references :job, foreign_key: true
      t.string :task

      t.timestamps
    end
  end
end
