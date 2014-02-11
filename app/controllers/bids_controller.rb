class BidsController < ApplicationController
  
  def index
  	@auction = Auction.find(params[:auction_id])
  end

  def show
  	@auction = Auction.find(params[:auction_id])
  	@bid = @auction.bids.find(params[:id])

  end

  def edit
  	@auction = Auction.find(params[:auction_id])
  	@bid = @auction.bids.find(params[:id])
  end

  def new
  	@auction = Auction.find(params[:auction_id])
  	@bid = @auction.bids.new()
  end

  def create
  	@auction = Auction.find(params[:auction_id])
	@bid = @auction.bids.create(params.require(:bid).permit(:amount))
	redirect_to auction_bid_path(@auction, @bid)
  end

  def delete
  end

  def update
  	updated_info = params.require(:bid).permit(:amount)
  	auction = Auction.find(params[:auction_id])
  	bid = auction.bids.find(params[:id]).update(updated_info)
  	redirect_to auction_bid_path
  end

end
