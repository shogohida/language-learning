class WordsController < ApplicationController
  def index
    @language = Language.find(params[:language_id])
    @words = policy_scope(Word)
  end

  def translate
    translator = BingTranslator.new('80968ee7c4b64007ae230020f2122ca8')
    spanish = translator.translate('Hello. This will be translated!', :from => 'en', :to => 'es')
  end

  def show
    @word = Word.find(params[:id])
    authorize @word
  end

  def new
    @word = Word.new
    authorize @word
  end

  def create
    @word = Word.new(word_params)
    authorize @word
  end

  def edit
    @word = Word.find(params[:id])
    authorize @word
  end

  def update
    @word = Word.find(params[:id])
    @word.update(word_params)
    authorize @word
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    authorize @word
  end

  private

  def word_params
    params.require(:word).permit(:name, :pronunciation, :length, :level, :meaning)
  end
end
