class HomesController < ApplicationController
  def hommes
    @Songs = Song.all.limit(100)
  end
end

