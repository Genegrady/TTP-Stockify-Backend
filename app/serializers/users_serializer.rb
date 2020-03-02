class UsersSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest
  has_many :transactions, optional: true
end
