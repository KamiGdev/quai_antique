class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, format: URI::MailTo::EMAIL_REGEXP

  def admin?
    email == 'kami@k.k'  # mdp: rv3gJ5g^67M*N[
  end
end
