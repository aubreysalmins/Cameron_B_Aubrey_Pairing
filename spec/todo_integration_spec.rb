require "todo_list"
require "todo"

RSpec.describe "todo integration" do
  describe "#incomplete" do
    it "returns multiple todos" do
      todo_list = TodoList.new
      todo = Todo.new("Walk the dog")
      todo_1 = Todo.new("Take a shower")
      todo_list.add(todo)
      todo_list.add(todo_1)
      expect(todo_list.incomplete).to eq [todo, todo_1]
    end
  end
end