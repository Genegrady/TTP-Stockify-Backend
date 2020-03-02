class TransactionsSerializer < ActiveModel::Serializer
  attributes: :id, :price, :quantity, :ticker, :user_id
end
