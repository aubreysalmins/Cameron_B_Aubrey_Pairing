class TodoList
  def initialize
    @todo_list = []
    @status = nil
    @incomplete_todos = []
    @complete_todos = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list << todo
  end

  def incomplete
    @incomplete_todos = []
    @todo_list.each do |todo|
      if todo.done? == false 
        @incomplete_todos << todo
      end
    end

    return @incomplete_todos

    #    return @todo_list
  end

  def complete
    @complete_todos = []
    @todo_list.each do |todo|
      if todo.done? == true 
        @complete_todos << todo
      end
    end
# binding.irb
    return @complete_todos
    # complete_todos << done?
    # Returns all complete todos
  end

  def give_up!
    @todo_list.each do |todo|
      @complete_todos << todo
    end
    @incomplete_todos.each do |todo|
      @complete_todos << todo
    end
    completed_tasks = []
    # Marks all todos as complete
    @complete_todos.each do |todo|
       completed_tasks << todo.task
    end

    return completed_tasks
  end
end