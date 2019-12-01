class AddToolImageToTool < ActiveRecord::Migration[5.1]
  def change
    add_column :tools, :tool_image, :string
  end
end
