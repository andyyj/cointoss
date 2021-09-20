class CoinTossesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def home
    @coin_tosses = CoinToss.all
    @coin_tosses = @coin_tosses.filter_by_status(params[:is_coin_tossed]) if params[:is_coin_tossed].present?
  end

  def new
    @coin_toss = CoinToss.new
  end

  def create
    @coin_toss = CoinToss.new(coin_toss_params)
    @coin_toss.result = [:heads, :tails].sample
    @coin_toss.is_coin_tossed = false
    if @coin_toss.save
      redirect_to @coin_toss
    else
      render 'home'
    end
  end

  def show
    @coin_toss = CoinToss.find(params[:id])
  end

  def toss_coin
    @coin_toss = CoinToss.find(params[:id])
    @coin_toss.update( :is_coin_tossed => true )
    redirect_to @coin_toss, :notice => "Coin Tossed"
  end

  private
    def coin_toss_params
      params.require(:coin_toss).permit(:heads, :tails)
    end
end
