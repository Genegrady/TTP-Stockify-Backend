class TransactionsController < ApplicationController
def index
    transactions = Transaction.all 
    render json: transactions
 end

 def show
    transaction = Transaction.find(params[:id])
    render json: transaction
 end

 def create
    transaction = Transaction.create(transaction_params)
    if transaction.save
        render json: {transaction:transaction, status: 200, msgs: 'Transaction was created'}
    end
 end

 def destroy
    transaction = Transaction.find(params[:id])
    if transaction.destroy
    render json: {status: 200, msg: 'transaction has been deleted'}
    end
 end

 private

 def transaction_params
    params.permit(
        :price, :quantity, :ticker, :user_id
    )
 end
end
