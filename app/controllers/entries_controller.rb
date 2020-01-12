class EntriesController < ApplicationController
  before_action :find_entry, only: [:show, :edit, :update, :destroy]

  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def show
  end

  def edit
  end

  def create
    Entry.create(entry_params)
    redirect_to entries_path
  end

  def update
    @entry.update(entry_params)
    redirect_to entry_path(@entry)
  end

  def destroy
    @entry.destroy
    redirect_to entries_path
  end

  private

  def find_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:title, :content)
  end
end
