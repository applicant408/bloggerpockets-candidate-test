class ChangePostPublishedDefault < ActiveRecord::Migration[5.2]
  def up
    change_column :posts, :published, :boolean, default: false, null: false
  end

  def down
    change_column :posts, :published, :boolean, default: nil, null: nil
  end
end
