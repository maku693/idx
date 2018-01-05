class AddIndexToEventsOnSlug < ActiveRecord::Migration[5.1]
  def change
    add_index :events, :slug, unique: true
  end
end
