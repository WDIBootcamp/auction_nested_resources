class AuctionsController < ApplicationController
  def index
  end

  def show
    @auction = Auction.find(params[:id])
  end

  def show
    @auction = Auction.find(params[:id])
  end

  def new
    @auction = Auction.new
  end

  def create
      @auction = Auction.create(params.require(:auction).permit(:title, :bids_attributes=>[:amount]))
      redirect_to auction_path(@auction)
  end

  def delete
  end

  def update
  end
end
