defmodule MultiDict do
  def new(), do: %{}

  def add(dict, key, value) do
    Map.update(dict, key, [value], &[value | &1])
  end

  def get(dict, key) do
    Map.get(dict, key, [])
  end
end

defmodule TodoList do
  def new(), do: MultiDict.new()
  def add_entry(todo_list, date, entry), do: MultiDict.add(todo_list, date, entry)
  def entries(todo_list, date), do: MultiDict.get(todo_list, date)
end
