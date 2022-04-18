class Post < ApplicationRecord

  validates_presence_of :title,:content, on: :create, message: "No puede estar en blanco"

  validates_uniqueness_of :title, on: :create, message: " Ya se encuentra registrado"


  has_many :comments, dependent: :destroy

  has_rich_text :content
  broadcasts_to ->(post) {:posts}

end
