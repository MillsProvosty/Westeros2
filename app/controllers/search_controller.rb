class SearchController < ApplicationController
  def index
    @members = SearchWesterosFacade.new.find_members(params[:house])
    @members_count = @members.count
    binding.pry
  end
end
