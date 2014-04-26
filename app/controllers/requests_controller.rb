class RequestsController < ApplicationController
  before_filter :authenticate_user!
  expose(:request_object, model: :request, attributes: :request_params)
  expose(:requests, ancestor: :current_user)

  def create
    if request_object.save
      redirect_to request_object, notice: 'Request was successfully created.'
    else
      render :new
    end
  end

  def update
    if request_object.save
      redirect_to request_object, notice: 'Request was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    request_object.destroy
    redirect_to requests_url, notice: 'Request was successfully destroyed.'
  end

  private
    def request_params
      params.require(:request).permit(:title, :description)
    end
end
