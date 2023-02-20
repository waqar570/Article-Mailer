class TestArticle < ApplicationRecord
    validates :title, presence: true
end
