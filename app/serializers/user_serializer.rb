class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :mail, :password
end