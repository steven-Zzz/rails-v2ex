class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include ActiveModel::SecurePassword

  def avatar_url
    "https://robohash.org/#{id}.png?set=set3"
  end
end
