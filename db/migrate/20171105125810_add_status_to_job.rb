class AddStatusToJob < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobs, :status
  end
end
