class SearchController < ApplicationController
  def index
    render locals: {
      facade: SearchWesterosFacade.new.find_members(params[:house])
    }
  end
end

# What is the code I want?
# I want a service that will search the Westeros API
# for the members of a specific house, which is being passed in.
# That service will return a list of the members that I can iterate through on the view page.
#
