class RemovePasswordDigestFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :password_digest, :string
  end
end
