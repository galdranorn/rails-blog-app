class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    entry = Entry.find(params[:id])
    entry.update(entry_params)
    # same as:
    # entry.title = entry_params[:title]
    # entry.content = entry_params[:content]
    # entry.save
    redirect_to entry_path(entry)
  end

  def destroy
    entry = Entry.find(params[:id])
    entry.destroy
    redirect_to entries_path
  end

  def create
    Entry.create(entry_params)
    redirect_to entries_path
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :content)
  end
end
