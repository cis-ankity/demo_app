class AddPermanentToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :permanent, :boolean, default: :false
  end
end
