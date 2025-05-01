class Tenant < ApplicationRecord
  has_many :users
  validates :name, :subdomain, presence: true, uniqueness: true
end
