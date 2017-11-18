class HomesController < ApplicationController
  def index
    @price = 28000
    @vat = ENV["TAX_PERCENTAGE"]
    @total = @price + get_vat
  end

  private
  def get_vat
    @price.to_f * (@vat.to_f / 100.0)
  end
end
