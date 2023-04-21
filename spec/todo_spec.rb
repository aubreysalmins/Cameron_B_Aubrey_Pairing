require "todo"

RSpec.describe Todo do
  context "initially" do
    xit "constructs" do
      todo = Todo.new("Walk the dog")
      expect(todo.task).to eq "Walk the dog"
    end
  end
  describe "#mark_done!" do 
    xit 'checks if a task has been done' do 
      todo = Todo.new("Walk the dog")
      todo.mark_done!
      expect(todo.done?).to eq true
    end

    xit "checks if a task hasn't been done" do 
      todo = Todo.new("Walk the dog")
      expect(todo.done?).to eq false
    end
  end
end