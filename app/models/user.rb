class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
  has_many :enrrollments
  has_many :reviews
=======
>>>>>>> 86fd446acac29481ec34ce3ce37a0a94969276e4
end
