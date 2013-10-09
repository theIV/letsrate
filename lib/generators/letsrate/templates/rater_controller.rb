class RaterController < ApplicationController

  def create
    if user_signed_in?
      subject = params[:klass].constantize.
                  find(params[:id])
      score   = params[:score].to_i
      subject.rate(score, current_user, params[:dimension])
      render json: true
    else
      render json: false
    end
  end

end
