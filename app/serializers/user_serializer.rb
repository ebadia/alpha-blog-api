class UserSerializer < ActiveModel::Serializer
  attributes :username, :password, :email, :first_name, :last_name
end
