class Api::GreetingsController < ApplicationController
  def random
    random_greeting = Greeting.order('RANDOM()').first
    render json: { message: random_greeting&.message || 'No greetings available' }
  end
end
