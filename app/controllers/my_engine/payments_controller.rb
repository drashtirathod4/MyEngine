module MyEngine
  class PaymentsController < ApplicationController
    def index
      @payments = Payment.all
    end

    def new
      @payment = Payment.new
    end

    def create
      @payment = Payment.new(payment_params)
      if @payment.save
        Notification.create(message: "Payment done successfully")
        redirect_to payments_path, notice: "Payment created successfully!"
      else
        render :new
      end
    end

    private

    def payment_params
      params.require(:payment).permit(:amount, :currency)
    end
  end
end
