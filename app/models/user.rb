# class User < ApplicationRecord
#     has_and_belongs_to_many :articles
#
#     has_secure_password
#     validates :email, presence: true
#     validates :email, uniqueness: true
#     validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
# end

class User < ApplicationRecord
  has_and_belongs_to_many :articles

  has_secure_password
validates :name, presence: true
validates :name, uniqueness: true
validates :name, length: { minimum: 4 }
validates :email, presence: true
validates :email, uniqueness: true
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
