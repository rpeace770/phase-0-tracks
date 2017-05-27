class TodoList
  def initialize(array)
    @list = array
  end

  def get_items
    @list
  end

  def add_item(new_item)
    @list << new_item
  end

  def delete_item(item_to_remove)
    @list.delete(item_to_remove)
  end

  def get_item(index)
    @list[index]
  end
end