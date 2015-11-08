class Child < User
  has_one :mediator through :user_cases => (user) {user.type = Mediator }, class_name: 'User'}

end
