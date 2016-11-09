require_relative "task"

class Controller
  def initialize(view, repo) #--> Dependency injection (controller does not work without view)
    @view = view
    @repo = repo
  end

  def add_task
    description = @view.ask_for_task_description
    task = Task.new(description)
    @repo.add(task)
  end

  def list_tasks
    @view.display_tasks(@repo.tasks)
  end

  def finish_task
    index = @view.ask_index_of_done_task - 1
    task = @repo.find(index)
    task.mark_as_done
  end
end
