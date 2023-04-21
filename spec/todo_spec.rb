require "todo"

RSpec.describe Todo do
  context "initially" do
    it "constructs" do
      todo = Todo.new("Walk the dog")
      expect(todo.task).to eq "Walk the dog"
    end
  end

  
end