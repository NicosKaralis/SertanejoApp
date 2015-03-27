class ChangeUserIdFormatToString < ActiveRecord::Migration
  def change
    change_column :users, :fb_id, :string
    change_column :posts, :user_id, :string
    change_column :cantadas, :from_user, :string
    change_column :cantadas, :to_user, :string
  end
end
