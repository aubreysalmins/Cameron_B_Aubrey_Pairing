require "todo_list"

RSpec.describe TodoList do
  context "initially" do
    xit "returns an empty list" do
      todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []
    end
  end
end