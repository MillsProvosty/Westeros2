class WelcomeController < ApplicationController
  def index
    render locals: {
      houses: houses
    }
  end

  def houses
  [
    ['Stark', 'stark'],
    ['Lannister', 'lannister'],
    ['Targaryen', 'targaryen'],
    ['Tyrell', 'tyrell'],
    ['Greyjoy', 'greyjoy']
    ]
  end
end
