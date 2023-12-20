class AddOpeningDateToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :opening_date, :Date
  end
end
