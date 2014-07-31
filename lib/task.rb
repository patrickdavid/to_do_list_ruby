class Task

  attr_reader(:priority)

  def initialize(name)
    @name = name
    @is_it_done = false
    @priority = 0
    #@due_date = [month,day]
  end

  def is_it_done
    @is_it_done
  end

  def already_done
    @is_it_done = true
  end

  def change_priority(number)
    @priority = number
  end

  def edit(name_change)
    @name = name_change
  end



end
#puts test_task = Task.new("Learn Ruby")
