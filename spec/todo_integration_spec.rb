require "todo_list"
require "todo"

RSpec.describe "todo integration" do
  describe "#incomplete" do
    xit "returns multiple todos" do
      todo_list = TodoList.new
      todo = Todo.new("Walk the dog")
      todo_1 = Todo.new("Take a shower")
      todo_list.add(todo)
      todo_list.add(todo_1)
      expect(todo_list.incomplete).to eq [todo, todo_1]
    end
  end

  describe "#complete" do 
    context "when given multiple todos" do 
      xit "returns completed todos" do 
        todo_list = TodoList.new
        todo = Todo.new("Walk the dog")
        todo_1 = Todo.new("Take a shower")
        todo_list.add(todo)
        todo_list.add(todo_1)
        todo.mark_done!
        todo_1.mark_done!
        expect(todo_list.complete).to eq [todo, todo_1]
      end
    end
  end

  describe "#give_up! method" do 
    it "marks all todos as done" do 
      todo_list = TodoList.new
      todo = Todo.new("Walk the dog")
      todo_1 = Todo.new("Take a shower")
      todo_list.add(todo)
      todo_list.add(todo_1)
      expect(todo_list.give_up!).to eq ["Walk the dog", "Take a shower"]
    end
  end
end