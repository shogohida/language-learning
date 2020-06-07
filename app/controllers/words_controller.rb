class WordsController < ApplicationController
  def index
    @language = Language.find(params[:language_id])
    @words = Word.all
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private

  def word_params

  end
end
