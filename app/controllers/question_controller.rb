# frozen_string_literal: true

class QuestionController < ApplicationController
  def qusestion
    @question = Question.all
    render 'question/qusetion'
  end
end
