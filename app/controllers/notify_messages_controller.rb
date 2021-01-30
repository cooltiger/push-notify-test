class NotifyMessagesController < ApplicationController
  before_action :set_notify_message, only: %i[ show edit update destroy ]

  # GET /notify_messages or /notify_messages.json
  def index
    @notify_messages = NotifyMessage.all
  end

  # GET /notify_messages/1 or /notify_messages/1.json
  def show
  end

  # GET /notify_messages/new
  def new
    @notify_message = NotifyMessage.new
  end

  # GET /notify_messages/1/edit
  def edit
  end

  # POST /notify_messages or /notify_messages.json
  def create
    @notify_message = NotifyMessage.new(notify_message_params)

    respond_to do |format|
      if @notify_message.save
        format.html { redirect_to @notify_message, notice: "Notify message was successfully created." }
        format.json { render :show, status: :created, location: @notify_message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @notify_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notify_messages/1 or /notify_messages/1.json
  def update
    respond_to do |format|
      if @notify_message.update(notify_message_params)
        format.html { redirect_to @notify_message, notice: "Notify message was successfully updated." }
        format.json { render :show, status: :ok, location: @notify_message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notify_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notify_messages/1 or /notify_messages/1.json
  def destroy
    @notify_message.destroy
    respond_to do |format|
      format.html { redirect_to notify_messages_url, notice: "Notify message was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notify_message
      @notify_message = NotifyMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notify_message_params
      params.require(:notify_message).permit(:title, :contents)
    end
end
