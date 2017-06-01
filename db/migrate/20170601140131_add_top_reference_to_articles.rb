class AddTopReferenceToArticles < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :topic, foreign_key: true
  end
end
