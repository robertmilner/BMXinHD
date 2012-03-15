class ChangeDescriptionStringToTextOnVideos < ActiveRecord::Migration
  def up
    change_column :videos, :description, :text
  end

  def down
    change_column :videos, :description, :string
  end
end