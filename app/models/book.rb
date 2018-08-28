class Book < ApplicationRecord
  #タイトルのバリデーション
  validates :title, presence: true
  #内容のバリデーション
  validates :body, presence: true
end
