class OfferDecorator < ApplicationDecorator
  delegate_all


  def edit_link(request, offer)
    link_to t('edit'), url_for(h.edit_request_offer_path(request, offer))
  end

  def destroy_link(request, offer)
    link_to t('destroy'), url_for(h.request_offer_path(request, offer)),   data: {confirm: 'Na pewno?'} , method: :delete
  end

end
