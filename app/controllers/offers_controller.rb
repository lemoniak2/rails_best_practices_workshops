class OffersController < ApplicationController
  before_filter :authenticate_user!
  expose(:offer, attributes: :offer_params)
  expose(:request_object, model: :request)
  expose(:offers, ancestor: :request_object)
  expose(:decorated_offer){offer.decorate}
  expose(:decorated_offers){offers.decorate}

  def create
    offer.user_id = current_user.id
    if offer.save
      redirect_to offer.request, notice: 'Offer was successfully created.'
    else
      render :new
    end
  end

  def update
    if offer.update(offer_params)
      redirect_to offer.request, notice: 'Offer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @request = offer.request
    offer.destroy
    redirect_to @request, notice: 'Offer was successfully destroyed.'
  end

  private
    def offer_params
      params.require(:offer).permit(:message)
    end
end
