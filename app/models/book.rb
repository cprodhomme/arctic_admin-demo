class Book < ActiveRecord::Base
  validates :title, :author, :publisher, :genre, presence: true
end
