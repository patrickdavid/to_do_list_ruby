# require './task.rb'
class List

  #@@list_of_lists = Hash.new

  def initialize(name)
    @name = name
    @tasks = []
   # @@list_of_lists
  end

  def tasks
    @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def remove_task
    @tasks.each do |index|
      if index.is_it_done == true
        @tasks.delete(index)
      end
    end
  end

  def sort_by_priority
    @tasks.sort! {|b,a| a.priority <=> b.priority}

  end


end
# puts test_list = List.new("School stuff")
# puts test_task = Task.new("Learn Ruby")
# # puts test_list.add_task("Learn Ruby")
# puts test_task.already_done
# puts test_task.is_it_done
