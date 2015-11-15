class Parent < User
  has_secure_password
  has_many :messages
  has_one :case
  has_many :children
end
