class ContextChannel < ApplicationCable::Channel
  def subscribed
    # stream_for context
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  private

  # any activerecord instance has 'to_gid_param'
  def context
    # p "LOOK HERE"
    # puts "_____" * 7
    # p 
    # p params
    Context.find_by(id: params[:context_id])
  end
end
