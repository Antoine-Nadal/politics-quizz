class PoliticsController < ApplicationController

  def index
    @politics = Politic.all
  end

end
