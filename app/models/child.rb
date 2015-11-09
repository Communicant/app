class Child < ActiveRecord::Base
  # has_one :mediator through :user_cases => (user) {user.type = Mediator }, class_name: 'User'}
  # has_two :parents through :user_cases => (user)
end
