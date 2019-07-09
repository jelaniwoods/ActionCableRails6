class ResourceChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_for resource
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_all_streams
  end

  private

  # any activerecord instance has 'to_gid_param'
  def resource
    Resource.find_by(id: params[:resource])
  end
end
