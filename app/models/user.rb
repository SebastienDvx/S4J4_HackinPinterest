class User < ApplicationRecord
  validates :name, presence: true,
                   length: {minimum: 5 }
  validates :mail, presence: true

  has_many :pins

end
