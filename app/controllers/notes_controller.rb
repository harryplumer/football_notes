class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @school = School.find(params[:school_id])
    @note = Note.find(params[:id])
  end

  def new
    @school = School.find(params[:school_id])
    @note = Note.new
  end

  def create
    note = Note.new(note_params)
    note.school = School.find(params[:school_id])
    if note.save
      redirect_to school_path(note.school)
    else
      redirect_to school_path(note.school)
    end
  end

  def destroy
    @school = School.find(params[:school_id])
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to school_path(@school)
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to school_path(@note.school)
    else
    end
  end

  private
  def note_params
    params.require(:note).permit(:week, :body, :school)
  end     
end
