class Todo
  def initialize(task) # task is a string
    @task = task
    @done = []
  end

  def task
    return @task
  end

  def mark_done!
    @done << @task 
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    if @done.include?(@task)
      return true
    else
      return false
    end

    return @done.include?(@task)
    # Returns true if the task is done
    # Otherwise, false
  end
end