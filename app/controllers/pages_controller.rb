class PagesController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = if @question.blank?
                'Anything?'
              elsif @question.include? 'I am going to work'
                'Great!'
              elsif @question.ends_with?('?')
                'Silly question, get dressed and go to work!'
              else
                'I dont care,  get dressed up and go to work!'
              end
  end
end
