class User < ApplicationRecord
  belongs_to :tenant
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
