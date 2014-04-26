class OffersController < ApplicationController
  before_filter :authenticate_user!
  expose(:offer, attributes: :offer_params)
  expose(:offers)

  def create
    if offer.save
      redirect_to offer, notice: 'Offer was successfully created.'
    else
      render :new
    end
  end

  def update
    if offer.update(offer_params)
      redirect_to offer, notice: 'Offer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    offer.destroy
    redirect_to offers_url, notice: 'Offer was successfully destroyed.'
  end

  private
    def offer_params
      params.require(:offer).permit(:message)
    end
end
