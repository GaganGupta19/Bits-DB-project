class EventSubEventsController < ApplicationController
  before_action :set_event_sub_event, only: %i[ show edit update destroy ]

  # GET /event_sub_events or /event_sub_events.json
  def index
    @event_sub_events = EventSubEvent.all
  end

  # GET /event_sub_events/1 or /event_sub_events/1.json
  def show
  end

  # GET /event_sub_events/new
  def new
    @event_sub_event = EventSubEvent.new
  end

  # GET /event_sub_events/1/edit
  def edit
  end

  # POST /event_sub_events or /event_sub_events.json
  def create
    @event_sub_event = EventSubEvent.new(event_sub_event_params)

    respond_to do |format|
      if @event_sub_event.save
        format.html { redirect_to @event_sub_event, notice: "Event sub event was successfully created." }
        format.json { render :show, status: :created, location: @event_sub_event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_sub_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_sub_events/1 or /event_sub_events/1.json
  def update
    respond_to do |format|
      if @event_sub_event.update(event_sub_event_params)
        format.html { redirect_to @event_sub_event, notice: "Event sub event was successfully updated." }
        format.json { render :show, status: :ok, location: @event_sub_event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event_sub_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_sub_events/1 or /event_sub_events/1.json
  def destroy
    @event_sub_event.destroy
    respond_to do |format|
      format.html { redirect_to event_sub_events_url, notice: "Event sub event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_sub_event
      @event_sub_event = EventSubEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_sub_event_params
      params.require(:event_sub_event).permit(:event_id, :sub_event_id)
    end
end
