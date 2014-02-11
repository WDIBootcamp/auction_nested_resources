NestedResourcesAuction::Application.routes.draw do
  
  resources :auctions do
    resources :bids 
  end

end



#          Prefix Verb   URI Pattern                                   Controller#Action
#     auction_bids GET    /auctions/:auction_id/bids(.:format)          bids#index
#                  POST   /auctions/:auction_id/bids(.:format)          bids#create
#  new_auction_bid GET    /auctions/:auction_id/bids/new(.:format)      bids#new
# edit_auction_bid GET    /auctions/:auction_id/bids/:id/edit(.:format) bids#edit
#      auction_bid GET    /auctions/:auction_id/bids/:id(.:format)      bids#show
#                  PATCH  /auctions/:auction_id/bids/:id(.:format)      bids#update
#                  PUT    /auctions/:auction_id/bids/:id(.:format)      bids#update
#                  DELETE /auctions/:auction_id/bids/:id(.:format)      bids#destroy
#         auctions GET    /auctions(.:format)                           auctions#index
#                  POST   /auctions(.:format)                           auctions#create
#      new_auction GET    /auctions/new(.:format)                       auctions#new
#     edit_auction GET    /auctions/:id/edit(.:format)                  auctions#edit
#          auction GET    /auctions/:id(.:format)                       auctions#show
#                  PATCH  /auctions/:id(.:format)                       auctions#update
#                  PUT    /auctions/:id(.:format)                       auctions#update
#                  DELETE /auctions/:id(.:format)                       auctions#destroy