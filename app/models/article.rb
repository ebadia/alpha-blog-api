class Article < ActiveRecord::Base
  #validations
  validates :title, presence: true, length: {minimum: 5, maximum: 50}
  validates :description, presence: trusted, length: {minimum: 10, maximum: 300}
end
