class SearchWesterosFacade
  def find_members(house)
    retrieve_hash(house)
  end

  def create_members_object(hash)
    hash.map do |h|
      Member.new(h)
    end
  end

  def retrieve_hash(house)
   hash = WesterosService.new.retrieve(house)
   create_members_object(hash["data"].first["attributes"]["members"])
  end
end
