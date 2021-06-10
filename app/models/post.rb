class Post < ApplicationRecord
    validates :name, presence: true, length: {maximum: 100}, format:{with:/\A[a-zA-Z0-9]+\z/}
    validates :content, presence: true, length: {maximum: 400}, format:{with:/\A[a-zA-Z0-9]+\z/}
end
