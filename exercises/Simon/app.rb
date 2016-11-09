require_relative "task"
require_relative "repository"
require_relative "view"
require_relative "controller"
require_relative "router"

view = View.new
repo = Repository.new
controller = Controller.new(view, repo)
Router.new(controller).run


controller.add_task
controller.list_tasks
controller.finish_task
controller.list_tasks
