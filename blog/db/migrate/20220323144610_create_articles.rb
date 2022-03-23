class CreateArticles < ActiveRecord::Migration[5.0]
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 5 }
  
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
