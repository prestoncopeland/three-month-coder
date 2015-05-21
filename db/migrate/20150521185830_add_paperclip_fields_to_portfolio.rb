class AddPaperclipFieldsToPortfolio < ActiveRecord::Migration
  def change
     add_column :portfolios, :image1_file_name,    :string
    add_column :portfolios, :image1_content_type, :string
    add_column :portfolios, :image1_file_size,    :integer
    add_column :portfolios, :image1_updated_at,   :datetime

  end
end
