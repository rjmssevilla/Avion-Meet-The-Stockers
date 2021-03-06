class Buyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
         validates :first_name, presence: true
         validates :last_name, presence: true

        #  has_many :broker_stocks
        #  has_many :brokers, through: :broker_stocks

         has_many :buyer_stocks
         has_many :broker_stocks, through: :buyer_stocks
end
