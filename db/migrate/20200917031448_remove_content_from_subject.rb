class RemoveContentFromSubject < ActiveRecord::Migration[6.0]
  def change
    remove_column :subjects, :content, :string
  end
end
