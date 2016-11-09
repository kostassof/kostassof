class Router
  def initialize(controller)
    @controller = controller
  end

  def run()
    loop do
      print_menu
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  def dispatch(action)
    case action
      when 1 then @controller.list_tasks
      when 2 then @controller.add_task
      when 3 then @controller.finish_task
      else exit
      end
  end

  def print_menu
    puts "---------------------------------"
    puts "Hello there, what do you want do?"
    puts "1 - List all tasks"
    puts "2 - Add a new task"
    puts "3 - Mark a task as done"
    puts "---------------------------------"
  end


end

