class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]
  def welcome
    @header = "This is the welcome page"
  end

  def about

  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    # redirect_to "/welcome"
    redirect_to welcome_path
  end

  def kitten

  end

  def kittens

  end

  def secrets
    if params[:magic_word] == 'cat'
      render :secrets
    else
      flash[:notice] = "Sorry, that isn't the magic word"
      # redirect_to '/welcome'
      redirect_to welcome_path
    end
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
