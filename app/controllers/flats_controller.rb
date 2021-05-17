require 'open-uri'

class FlatsController < ApplicationController
  FLATS_URL = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
  before_action :set_flats

  def index
  end

  def show
    # Parse it and store it in a variable!
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i}
  end

  private

  def set_flats
    @flats = JSON.parse(open(FLATS_URL).read)
  end
end
