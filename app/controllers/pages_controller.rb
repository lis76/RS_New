# frozen_string_literal: true

class PagesController < ApplicationController
  def landing
    redirect_to '/photos' if user_signed_in?
  end

  def about; end
end
