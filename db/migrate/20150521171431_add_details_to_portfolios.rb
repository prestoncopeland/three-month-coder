class AddDetailsToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :project_url, :string
    add_column :portfolios, :github_url, :string
  end
end
