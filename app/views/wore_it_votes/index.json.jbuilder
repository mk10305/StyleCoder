json.array!(@wore_it_votes) do |wore_it_vote|
  json.extract! wore_it_vote, :id, :vote, :user_id, :item_id
  json.url wore_it_vote_url(wore_it_vote, format: :json)
end
