class Blog < ApplicationRecord
  enum status: { drafty: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
end
