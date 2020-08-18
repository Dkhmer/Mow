class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD

  has_many :animals

=======
  has_many :animals
  has_many :bookings
>>>>>>> 41c84566fa05506009d115cc811c8453a8abd0d7
end
