class EntriesController < ApplicationController
  # GET /entries
  def index
    @event = Event.find params[:event_id]
    @entries = Entry.all
  end

  # GET /entries/1
  def show
    @event = Event.find params[:event_id]
    @entry = Entry.find(params[:id])
  end

  # GET /entries/new
  def new
    @event = Event.find params[:event_id]
    @entry = Entry.new
  end

  # GET /entries/1/edit
  def edit
    @event = Event.find params[:event_id]
    @entry = Entry.find(params[:id])
  end

  # POST /entries
  def create
    @event = Event.find params[:event_id]
    @entry = Entry.new(params[:entry])
    @entry.event = @event

    if @entry.save
      flash[:notice] = 'Entry was successfully created.'
      redirect_to event_entries_path(@event)
    else
      render :action => "new"
    end
  end

  # PUT /entries/1
  def update
    @entry = Entry.find(params[:id])

    respond_to do |format|
      if @entry.update_attributes(params[:entry])
        flash[:notice] = 'Entry was successfully updated.'
        redirect_to(@entry)
      else
        render :action => "edit"
      end
    end
  end

  # DELETE /entries/1
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to(entries_url)
  end
end
