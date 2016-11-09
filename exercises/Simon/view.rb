class View
  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      status = task.done?  ? "[x]" : "[ ]"
      puts "#{index+1} #{status} #{task.description}"
    end
  end

  def ask_for_task_description
    puts "What do you need to do"
    print "> "
    gets.chomp
  end

  def ask_index_of_done_task
    puts "Which task did you finish"
    print "> "
    gets.chomp.to_i
  end
end
