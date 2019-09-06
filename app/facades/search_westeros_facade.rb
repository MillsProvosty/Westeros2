class SearchWesterosFacade
  def find_members(house)
    WesterosService.new.retrieve(house)
  end

  
end
