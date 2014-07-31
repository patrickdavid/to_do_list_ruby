require 'rspec'
require 'list'
require 'task'

describe (List) do
  before do
    List.clear
  end
  it("starts out with an empty list of tasks") do
  test_list = List.new("School stuff")
  expect(test_list.tasks).to(eq([]))
end

  it "lists all lists" do
  test_list = List.new("School stuff")
  expect(List.all).to(eq([test_list]))
end

  it("can add tasks") do
    test_list = List.new("School stuff")
    test_task = Task.new("Learn Ruby")
    test_list.add_task(test_task)
    expect(test_list.tasks).to(eq([test_task]))
  end

  it("can make two lists") do
    test_list = List.new("School stuff")
    next_list = List.new("Home stuff")
    test_task = Task.new("Learn Ruby")
    home_task = Task.new("Do Laundry")
    next_list.add_task(home_task)
    test_list.add_task(test_task)
    expect(next_list.tasks).to(eq([home_task]))
    expect(test_list.tasks).to(eq([test_task]))
  end

  it "sorts tasks by priority" do
    test_list = List.new("School stuff")
    test_task = Task.new("Learn Ruby")
    test_task1 = Task.new("sleep")
    test_list.add_task(test_task1)
    test_task.change_priority(4)
    test_task1.change_priority(40)
    test_task3 = Task.new("study")
    test_list.add_task(test_task3)
    test_list.add_task(test_task)
    test_list.sort_by_priority
    expect(test_list.tasks).to(eq([test_task1, test_task, test_task3]))
  end

  it "prints out all tasks that are marked as done" do
    test_list = List.new("School stuff")
    next_list = List.new("Home stuff")
    home_task = Task.new("Do Laundry")
    home_task1 = Task.new("Do Dishes")
    test_task = Task.new("Learn Ruby")
    test_task1 = Task.new("sleep")
    next_list.add_task(home_task)
    next_list.add_task(home_task1)
    test_list.add_task(test_task1)
    test_task.change_priority(4)
    test_task1.change_priority(40)
    test_task3 = Task.new("study")
    test_list.add_task(test_task3)
    test_list.add_task(test_task)
    home_task1.already_done
    test_task.already_done
    test_list.done_list
    expect(test_list.done_list).to(eq([test_task, home_task1]))
  end
end

describe (Task) do
  it("starts out with a name and @done == false") do
  test_task = Task.new("School stuff")
  expect(test_task.is_it_done).to(eq(false))
end

  it "removes a done task from its list" do
   test_task = Task.new("homework")
   test_list = List.new("School stuff")
   test_list.add_task(test_task)
   test_task.already_done
   test_list.remove_task
   expect(test_list.tasks).to(eq([]))
 end

  it "shows priority" do
    test_task = Task.new("homework")
    test_task.change_priority(4)
    expect(test_task.priority).to(eq(4))
  end

  it"edits the description of the task" do
    test_list = List.new("Home")
    test_task = Task.new("dust")
    expect(test_task.edit("dust the house")).to(eq("dust the house"))
  end
end
