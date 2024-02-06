class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validate :unique_email
  private

  def unique_email
    if User.exists?(email: email)
      errors.add(:email, 'ya está registrado')
    end
  end
end
