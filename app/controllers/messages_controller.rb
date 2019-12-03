class MessagesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @message = Message.new(message_params)
    @message.event = @event
    @message.user = current_user
    if @message.save!
      puts 'hi'
      respond_to do |format|
        format.html { redirect_to event_path(@event) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'events/show' }
        format.js
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
