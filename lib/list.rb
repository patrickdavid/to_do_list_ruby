# require './task.rb'
class List

  @@list_of_lists = []

  def initialize(name)
    @name = name
    @tasks = []
    @@list_of_lists << self
    #@@list_of_lists << self
  end

  def tasks
    @tasks
  end

  def name
    @name
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

  def done_list
    complete = []
    @@list_of_lists.each do |list|
       list.tasks.each do |index|
        if index.is_it_done == true
        complete.push(index)
        end
      end
    end
    complete
  end


def save
  @@list_of_lists << self
end

def self.all
  @@list_of_lists
end

def self.clear
  @@list_of_lists = []
end

end
# puts test_list = List.new("School stuff")
# puts test_task = Task.new("Learn Ruby")
# # puts test_list.add_task("Learn Ruby")
# puts test_task.already_done
# puts test_task.is_it_done
