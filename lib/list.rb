# require './task.rb'
class List

  def initialize(name)
    @name = name
    @tasks = []
  end

  def tasks
    @tasks
  end

  def add_task(task)
    @tasks << task
  end

end
# puts test_list = List.new("School stuff")
# puts test_task = Task.new("Learn Ruby")
# puts test_list.add_task("Learn Ruby")
# puts test_list.tasks
