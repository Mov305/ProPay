class PaymentController < ApplicationController
  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(payment_params)
    @payment.group_id = params[:group_id]
    @payment.user_id = current_user.id
    if @payment.save
      redirect_to group_path(params[:group_id])
    else
      render :new
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:amount, :name)
  end
end
