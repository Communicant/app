class Mediator < User
  has_secure_password
  has_many :cases
  has_many :events, through: :cases
end
