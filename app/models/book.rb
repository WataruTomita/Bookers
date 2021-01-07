class Book < ApplicationRecord
# 個別modelに対して適用
    validates :title, presence: true
    validates :body, presence: true
end
